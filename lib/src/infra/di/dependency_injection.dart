import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/education/education_cube.dart';

class DependencyInjection {
  static setup() {
    Cubes.registerDependency((injector) => EducationCube());
  }
}
