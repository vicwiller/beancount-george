# formatting

fmt-black:
	poetry run black beancount_george/ tests/

# lint

lint-black:
	poetry run black --check beancount_george/ tests/

lint-flake8:
	poetry run flake8 beancount_george/ tests/

lint: lint-black lint-flake8

# test

test-pytest:
	poetry run pytest tests/

test: test-pytest
