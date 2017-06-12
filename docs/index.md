![European Commission logo](https://ec.europa.eu/ec_portal/2016/images/logo/logo-splashpage.png)

# Project template

The project template is the starting point for any site based on the Drupal 8 platform. The current platform adopts a
totally decoupled approach by isolating each functionality into a dedicated component, such as:

- [OpenEuropa Core](https://github.com/ec-europa/oe_core): Core module
- [OpenEuropa Theme](https://github.com/ec-europa/oe_theme): Drupal 8 theme based on the Europa Component Library (ECL).
- [OpenEuropa Profile](https://github.com/ec-europa/oe_profile): Basic installation profile.
- [OpenEuropa Behat](https://github.com/ec-europa/oe-behat): Contains custom Behat contexts and code.
- [OpenEuropa Code Review](https://github.com/ec-europa/oe-code-review): Make automatic conventions checking on each commit
  via GrumPHP.
- [Europa Component Library Toolkit](https://github.com/ec-europa/ecl-toolkit): Set of tools we use to build our
  front-end components.
- [Europa Component Library Twig loader](https://github.com/ec-europa/ecl-twig-loader): Twig loader for Europa Component
  Library, it allows to load components by accessing them via a configurable namespace.
- [Europa Component Library](https://github.com/ec-europa/europa-component-library): Component library based on Fractal.
