# Symfony Project Testing with PHPUnit for GitHub actions
PHPUnit action for GitHub on PHP 7.4

copy this into .github/workflows/phpunit.yml:

```yaml
name: phpunit
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Install dependencies
        run: composer install --no-progress --no-suggest

      - name: PHPUnit
        uses: maddy2101/actions-symfony-phpunit@master
```