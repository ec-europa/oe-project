![European Commission logo](https://ec.europa.eu//ec_portal/2016/images/logo/logo-splashpage.png)

# Project template

The project template is the starting point for any site based on the Drupal 8 platform. The current platform adopts a
totally decoupled approach by isolating each functionality into a dedicated component, such as:

- [POC Core](https://github.com/ec-europa/poc_core): Core module
- [POC Theme](https://github.com/ec-europa/poc_theme): Drupal 8 theme based on the Europa Component Library (ECL).
- [POC Profile](https://github.com/ec-europa/poc_profile): Basic installation profile.
- [POC Behat](https://github.com/ec-europa/poc-behat): Contains custom Behat contexts and code.
- [POC Code Review](https://github.com/ec-europa/poc-code-review): Make automatic conventions checking on each commit
  via GrumPHP.
- [Europa Component Library Toolkit](https://github.com/ec-europa/ecl-toolkit): Set of tools we use to build our
  front-end components.
- [Europa Component Library Twig loader](https://github.com/ec-europa/ecl-twig-loader): Twig loader for Europa Component
  Library, it allows to load components by accessing them via a configurable namespace. module
- [Europa Component Library](https://github.com/ec-europa/europa-component-library): Component library based on Fractal.
