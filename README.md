# README

## Ruby version
You should have rbenv installed, and that should take care of everything else.
This application specifies Ruby 2.1.5.

## System dependencies
PostgreSQL is necessary for foreign key constraints.

## Configuration
Make sure to point config/database.yml at a valid PostgreSQL database.

## Database creation
Run `bundle exec rake db:create db:migrate db:seed` to create a database
and seed it with some basic values

## How to run the test suite
Run `bundle exec rspec`