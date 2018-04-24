[![Maintainability](https://api.codeclimate.com/v1/badges/76cdbb4e023166cc619d/maintainability)](https://codeclimate.com/github/nisevi/primes_table/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/76cdbb4e023166cc619d/test_coverage)](https://codeclimate.com/github/nisevi/primes_table/test_coverage) [![Build Status](https://semaphoreci.com/api/v1/nisevi/primes_table/branches/master/shields_badge.svg)](https://semaphoreci.com/nisevi/primes_table) [![Gem Version](https://badge.fury.io/rb/primes_table.svg)](https://badge.fury.io/rb/primes_table)

# PrimesTable

Command line tool for printing out a multiplication table of the first N prime numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'primes_table'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install primes_table

## Usage

- By default the table will be generated as a matrix of 10X10;

- Only values greater or equal than 10 will be considered for specifying rows or columns;

- If you enter a value minor than 10, it will default to 10;

- Only integer values are considered. For example, if you enter an string, it will be converted to integer, the result will be 0 (zero) and will default to 10 because zero is minor than 10;

- Options:
    - `-h, --help` to see the available options;
    - `-r, --rows ROWS` to specify how many rows;
    - `-c, --columns COLUMNS` to specify how many columns;
    - `--version` it will give you the version of the gem you are using;

- Command examples:
    - `primes_table --version`;
    - `primes_table --help`;
    - `primes_table`;
    - `primes_table -r 17`;
    - `primes_table -c 23`;
    - `primes_table -r 17 -c 23`;

## Tests

- Rspec:
    - `bundle exec rspec`

## Development

When working on this gem locally, if you want to run it, you just need to:

`$ bundle exec bin/primes_table`

and you will get the default output:

|     |   2  |  3  |   5  |   7  |
|:---:|:----:|:---:|:----:|:----:|
|  2  |   4  |  6  |   10 |  14  |
|  3  |   6  |  9  |   15 |  21  |
|  5  |  10  | 15  |   25 |  35  |
|  7  |  14  | 21  |   35 |  49  |

