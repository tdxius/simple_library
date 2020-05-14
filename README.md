# Simple Library

## Prerequisites

* Install Git
* Install [Docker](https://www.docker.com/products/docker-desktop)

## Quick start:

* `git clone https://github.com/tdx996/simple_library.git`

* `cd simple_library/`

* `cp example.env .env`

* Edit `DEFAULT_EMAIL` and `DEFAULT_PASSWORD` in `.env`. They will be set as your log in credentials.

* `make run`

* Open a new tab in the same folder, run `make matrix` and `bundle exec rails db:create && bundle exec rails db:migrate`

* Visit http://localhost:3000 and login with the credentials from `.env`