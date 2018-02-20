**Abandoned. Check the [OpenEuropa project](https://github.com/openeuropa/openeuropa) for more information.**

# OpenEuropa project template

[![Build Status](https://travis-ci.org/ec-europa/oe-project.svg?branch=master)](https://travis-ci.org/ec-europa/oe-project)

## Installation

After [installing Composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx) run:

```
composer install
```

Then copy relevant properties from `runner.yml.dist` to `runner.yml` and change their values according to your local setup.

To install the project from scratch run:

```
$ ./vendor/bin/runner drupal:site-install
```

Your Drupal project will be then installed in the `./build` directory.

For more information about how to work with build configuration check out the [OpenEuropa Task Runner](https://github.com/ec-europa/oe-task-runner)
project.

## Install from existing configuration

To install the project from existing configuration run:

```
$ ./vendor/bin/run drupal:site-install-config
```

## Add external dependencies

Add external dependencies, like contributed modules, PHP libraries, etc., using `composer require`:

```
composer require drupal/devel:~1.0
```

## Add custom projects

Custom project, like modules or themes, must be placed under `./custom/{modules,themes}` and each of them must have
a local `composer.json` file like the one below:

```json
{
  "name": "my_project/my_module",
  "description": "My module description.",
  "type": "drupal-module"
}
```

After that add them to `composer.json` like shown below and run `composer update`:

```json
"require": {
  "my_project/my_module": "*"
}
```

This will symlink your custom projects to destinations specified in the `installer-paths` section.

## Run tests

To setup Behat tests run:

```
$ ./vendor/bin/run drupal:setup-behat
```

Then simply run:

```
$ ./vendor/bin/behat
```

## Apply patches

If you need to apply patches you can do so with the [composer-patches](https://github.com/cweagans/composer-patches) plugin.

To patch a Drupal projects insert the `patches` section in the `extra` section of `composer.json`:

```json
"extra": {
  "patches": {
    "drupal/foobar": {
      "Patch description": "URL to patch"
    }
  }
}
```
