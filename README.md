[![Build Status](https://travis-ci.org/twp88/primus.svg?branch=master)](https://travis-ci.org/twp88/primus) [![Coverage Status](https://coveralls.io/repos/github/twp88/primus/badge.svg?branch=master)](https://coveralls.io/github/twp88/primus?branch=master)



# Primus Lapus

Welcome to Primus Lapus! As the name in latin suggests, this is the first ruby gem that I've
written. It takes a hash as an argument, takes every other key, capitilizes them, reverses their
order, before turning it into a string. It that's what you need, then this is your gem!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'primus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install primus

## Usage

To run the gem type, ```ruby Primus::Reorder.new.call(hash)```, passing it the hash that you have created.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/twp88/primus. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
