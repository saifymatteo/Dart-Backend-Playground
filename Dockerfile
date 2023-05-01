# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM dart:stable AS build

RUN set -eux; \
    case "$(dpkg --print-architecture)" in \
        amd64) \
            TRIPLET="x86_64-linux-gnu" ;; \
        armhf) \
            TRIPLET="arm-linux-gnueabihf" ;; \
        arm64) \
            TRIPLET="aarch64-linux-gnu" ;; \
        *) \
            echo "Unsupported architecture" ; \
            exit 5;; \
    esac; \
    FILES="/lib/${TRIPLET}/libz.so.1 \
    /lib/${TRIPLET}/libgcc_s.so.1 \
    /usr/lib/${TRIPLET}/libssl.so.1.1 \
    /usr/lib/${TRIPLET}/libcrypto.so.1.1"; \
    for f in $FILES; do \
        dir=$(dirname "$f"); \
        mkdir -p "/runtime$dir"; \
        cp --archive --link --dereference --no-target-directory "$f" "/runtime$f"; \
    done

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - &&\
apt-get install -y nodejs

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Pub get
RUN dart pub get

# Install Prisma and dependencies
#RUN npm install prisma
RUN npm install prisma
RUN npm install

# Generate Prisma Client
RUN npx prisma generate
RUN dart run build_runner build --delete-conflicting-outputs

# Display prisma query engines
RUN ls node_modules/prisma

# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN dart compile exe bin/server.dart -o bin/server

# Pre download Query Engine
RUN dart run orm precache -t query

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=odroe/prisma-dart:amd64 /runtime /
COPY --from=build /app/bin/server /app/bin/

#COPY .dart_tool/prisma/query-engine /app/bin/
COPY --from=build /app/prisma /prisma/
COPY --from=build /app/node_modules/prisma/query-engine-* /prisma/

EXPOSE 8080
EXPOSE 5432

# Start server.
CMD ["/app/bin/server"]
