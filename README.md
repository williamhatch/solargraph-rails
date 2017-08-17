# Solargraph::Rails
A mountable Rails engine for the Solargraph API.

*This project is still in early development.*

## Installation

Add this line to your Gemfile:

```ruby
gem 'solargraph-rails'
```

Then run `bundle install`.

## Usage

Add this line to config/routes.rb:

```ruby
mount Solargraph::Rails::Engine => '/solargraph'
```

Further documentation pending. See the [Solargraph website](http://solargraph.org) for an online demo.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
