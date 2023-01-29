# Beancount george Importer

[![image](https://github.com/siddhantgoel/beancount-george/workflows/beancount-george/badge.svg)](https://github.com/siddhantgoel/beancount-george/workflows/beancount-george/badge.svg)

[![image](https://img.shields.io/pypi/v/beancount-george.svg)](https://pypi.python.org/pypi/beancount-george)

[![image](https://img.shields.io/pypi/pyversions/beancount-george.svg)](https://pypi.python.org/pypi/beancount-george)

[![image](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

`beancount-george` provides a [Beancount] Importer for converting CSV exports of
[george] account summaries to the Beancount format.

## Installation

```sh
$ pip install beancount-george
```

In case you prefer installing from the Github repository, please note that
`main` is the development branch so `stable` is what you should be installing
from.

## Usage

```python
from beancount_george import georgeImporter

CONFIG = [
    georgeImporter(
        IBAN_NUMBER,
        'Assets:george',
        language='en',
        file_encoding='utf-8',
    ),
]
```

### Classification

To classify specific recurring transactions automatically, you can specify an
`account_patterns` as follows:

```python
from beancount_george import georgeImporter

CONFIG = [
    georgeImporter(
        IBAN_NUMBER,
        'Assets:george',
        language='en',
        file_encoding='utf-8',
        account_patterns={
           "Expenses:Food:Restaurants": [
              "amorino",
              "five guys.*",
           ]
        }
    ),
]
```

The keys should be `accounts` while the items in the list are regular
expressions that should match a `payee`.

Some helper functions in `beancount_george/utils/patterns_generation.py` are here
to help you generate this dictionnary.

### Multiple-currency transactions

To mark transaction fees associated with multiple-currency transactions, you can
specify the `exchange_fees_account` parameter as follows:

```python
from beancount_george import georgeImporter

CONFIG = [
    georgeImporter(
        IBAN_NUMBER,
        'Assets:george',
        language='en',
        file_encoding='utf-8',
        exchange_fees_account='Expenses:TransferWise',
    ),
]
```

With this in place, for transactions where both the amount in EUR and amount in
foreign currency are given, the importer will calculate the transaction fee
based on the exchange rate included in the CSV export and automatically allocate
the value to the account specified in `exchange_fees_account`.

## Contributing

Please make sure you have Python 3.7+ and [Poetry] installed.

1. Git clone the repository -
   `git clone https://github.com/siddhantgoel/beancount-george`

2. Install the packages required for development -
   `poetry install`

3. That's basically it. You should now be able to run the test suite -
   `poetry run py.test`.

[Beancount]: http://furius.ca/beancount/
[george]: https://george.com/
[Poetry]: https://poetry.eustace.io/
