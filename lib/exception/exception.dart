import 'package:orm/orm.dart';

/// {@template lib.exception.prisma_unique_constraints_exception}
///
/// Custom [Exception] for Prisma Unique Constraints,
/// primarily used for Postgresql.
///
/// {@endtemplate}
///
class PrismaUniqueConstraintsException extends PrismaException {
  /// {@macro lib.exception.prisma_unique_constraints_exception}
  PrismaUniqueConstraintsException({
    required super.message,
    super.engine,
  }) {
    final subs = message
        .substring(message.indexOf('(') + 1)
        .replaceAll(')', '')
        .replaceAll('`', ' ')
        .split(' ')
        .where((e) => e.isNotEmpty);
    affectedFields.addAll(subs);
  }

  /// List of affected fields
  final List<String> affectedFields = [];
}
