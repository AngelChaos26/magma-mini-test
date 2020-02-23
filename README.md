# Magma Mini-Test

Magma Test based in the Game of Life.

## Prerequisites

You will need the following things properly installed on your computer. The recommended way of running this application is via Ruby installed with `rvm`.

* [RVM](http://rvm.io/)
* [Git](https://git-scm.com/)
* [PostgreSQL](https://www.postgresql.org/)

## Installation

* `git clone <repository-url>` this repository
* `cd api`
* `bundle install`
* `bundle exec rake db:setup`

## Setting up the dev environment

- Create a new file called `.env` in the root directory of the application based on `.env.sample`. Fill out the appropriate secrets before running the ruby server daemon.

```
MAGMA_USERNAME=
MAGMA_DATABASE_PASSWORD=
```

- Install Rails dependencias, via `bundle command`.

```bash
bundle install
```

- Setup `development` and `test` db.

```bash
bundle exec rake db:setup
```

## Running / Development

* `rails s`
* Visit your app at [http://localhost:3000](http://localhost:3000).

## Testing

This application uses `rspec` for unit and integration testing. Before you commit your changes, make sure you've tested everything with the following commands:

* `rspec`

Examples in `rspec` are based in the next Game of Life Challenges:

* [Game of Life](https://www.coderetreat.org/docs/gol-schemas/gol-solution.pdf)

For `command line`, declare a two-dimensional array as showed next:

```
grid =
[
  ['.','.','.','.','.'],
  ['.','.','.','.','.'],
  ['.','.','*','.','.'],
  ['.','.','.','.','.'],
  ['.','.','.','.','.']
]
```
* `'.'` Death Cell
* `'*'` Alive Cell

Execute the method `start_game!` from `GameOfLife` class sending the `grid` parameter and `life_cycles` parameter, which is represented with a `Integer` value to define grid iterations

```
life_cycles = 1
GameOfLife.start_game!(grid, life_cycles)
```

## Lint

This application uses `rubocop` for ruby style checking.

- `rubocop`
