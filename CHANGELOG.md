# CHANGELOG

## v0.8.0 (2022-12-11)

- Add Python 3.10 support
- Drop Python 3.6 support

## v0.7.0 (2022-08-24)

- Allow marking transaction fees for multiple-currency transactions
  (thanks [@Fumesover])

## v0.6.0 (2022-05-08)

- Allow `account_patterns` to automatically classify recurring transactions
  (thanks [@Eazhi])

## v0.5.0 (2021-12-13)

- Mark `category` field as optional because recent george CSV exports have dropped
  it (thanks [@ppetru])
- Drop Python 3.5 support

## v0.4.1 (2020-12-06)

- Avoid `UnicodeDecodeError` while trying to `identify` non-george files

## v0.4.0 (2020-09-13)

- Support header fields in French (thanks [@ArthurFDLR])
- Implement `file_date` (thanks [@ArthurFDLR])

## v0.3.1 (2020-05-12)

- Add optional parameter `existing_entries` to `extract()` (thanks [@tbm])

## v0.3.0 (2020-05-10)

- Add support for Python 3.8

## v0.2.0 (2019-10-22)

- Support multiple languages (starting with English and German)
- Add support for Python 3.5

## v0.1.0 (2019-10-21)

- First release

[@ArthurFDLR]: https://github.com/ArthurFDLR
[@Eazhi]: https://github.com/Eazhi
[@Fumesover]: https://github.com/Fumesover
[@ppetru]: https://github.com/ppetru
[@tbm]: https://github.com/tbm
