# WebBreaker

IN PROGRESS: A breaker switch for the external services of a Rails application. A mountable Rails engine that provides a back-end and interface for enabling / disabling external web services. Filters requests at the `Net::HTTP` layer of Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'web_breaker'
```

And then execute:

    $ bundle

Import migrations:

    $ rake web_breaker:install:migrations

And then run the migrations:

    $ rake db:migrate

Add this into your primary app's `routes.rb` file:

    mount WebBreaker::Engine, :at => "web_breaker"

If you want to configure WebBreaker, you can create a configuration initializer at `config/initializers/like so:

```ruby
WebBreaker.configure do |config|
  config.enabled = false
end
```

## Usage

Visit `/web_breaker`, create some services, and toggle them!

## TODO

Http Authentication!
Rules for automatic toggling and retrying.
