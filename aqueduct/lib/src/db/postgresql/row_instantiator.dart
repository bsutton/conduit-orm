import 'package:aqueduct/src/db/shared/builders/table.dart';
import 'package:aqueduct/src/db/shared/returnable.dart';
import 'package:aqueduct/src/db/shared/row_instantiator.dart';

class PostgreSQLRowInstantiator extends RowInstantiator<List<dynamic>> {
  PostgreSQLRowInstantiator(
      TableBuilder rootTableBuilder, List<Returnable> returningValues)
      : super(rootTableBuilder, returningValues);
}
