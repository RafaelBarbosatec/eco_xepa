import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/education/education_cube.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/products/products_cube.dart';

class DependencyInjection {
  static setup() {
    Cubes.registerDependency((injector) => EducationCube());
    Cubes.registerDependency((injector) => ProductsCube());
  }
}
