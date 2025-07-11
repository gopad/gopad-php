# Gopad: SDK for PHP

[![General Workflow](https://github.com/gopad/gopad-php/actions/workflows/general.yml/badge.svg)](https://github.com/gopad/gopad-php/actions/workflows/general.yml) [![Join the Matrix chat at https://matrix.to/#/#gopad:matrix.org](https://img.shields.io/badge/matrix-%23gopad%3Amatrix.org-7bc9a4.svg)](https://matrix.to/#/#gopad:matrix.org) [![Codacy Badge](https://app.codacy.com/project/badge/Grade/35b2dc9119fe46f29cc53725ca5bf90b)](https://app.codacy.com/gh/gopad/gopad-php/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade) [![PHP Version](https://badge.fury.io/ph/gopad%2Fgopad.svg)](https://badge.fury.io/ph/gopad%2Fgopad)

This repository provides a client SDK for PHP. This SDK is automatically
generated by the [OpenAPI Generator][generator] project:

-   API version: 1.0.0-alpha1
-   Package version: 2.4.0
-   Build package: org.openapitools.codegen.languages.PhpClientCodegen

For more information, please visit [https://gopad.eu](https://gopad.eu)

## Installation

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer][composer], simply add the following to
your `composer.json` file:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/gopad/gopad-php.git"
    }
  ],
  "require": {
    "gopad/gopad-php": "*@dev"
  }
}
```

After that you just need to run `composer install` to download it and you can
use it as a library.

### Manual Installation

Download the files and include the `autoload.php` file which is part of this
library/repository:

```php
<?php
require_once('/path/to/gopad/vendor/autoload.php');
```

## Tests

```console
composer install
vendor/bin/phpunit
```

## Security

If you find a security issue please contact
[gopad@webhippie.de](mailto:gopad@webhippie.de) first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

-   [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <thomas@webhippie.de>
```

[generator]: https://openapi-generator.tech
[composer]: https://getcomposer.org/
