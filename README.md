# Project template

[![Build Status](https://travis-ci.com/ec-europa/poc-project.svg?token=dqSmBxPQnRgBZvpCZAqo&branch=master)](https://travis-ci.com/ec-europa/poc-project)

## Usage

First you need to [install composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that clone this repository and run:

```
composer install
```

With `composer require ...` you can download new dependencies to your installation.

```
composer require drupal/devel:~1.0
```

## Installation

Copy relevant properties from `robo.yml.dist` to `robo.yml` and change their values according to your local setup.

For more information about how to work with Robo configuration check out the [POC Robo](https://github.com/ec-europa/poc-robo)
component.

To install the project run:

```
$ ./vendor/bin/robo project:install
```

Your Drupal project will be then installed in the `./build` directory.

## Add custom projects

Custom project, like modules or themes, must be placed under `./custom/{modules,themes}` and each of them must have
a local `composer.json` file like the one below:

```json
{
  "name": "my-repo/my_module",
  "description": "My module description.",
  "type": "drupal-module"
}
```

After that add them to the `composer.json` as below and run `composer update`:

```json
  ...
  "require": {
    ...
    "my-repo/my_module": "*"
  }
```

## Working with tests

To setup Behat tests run:

```
$ ./vendor/bin/robo project:setup-behat
```

Then simply run:

```
$ ./vendor/bin/behat
```

## Apply patches

If you need to apply patches you can do so with the  [composer-patches](https://github.com/cweagans/composer-patches) plugin.

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
