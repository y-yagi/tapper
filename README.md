# Tapper

[![Build Status](https://travis-ci.org/y-yagi/tapper.svg?branch=master)](https://travis-ci.org/y-yagi/tapper)
[![Gem Version](https://badge.fury.io/rb/tapper.svg)](http://badge.fury.io/rb/tapper)

`Tapper` taps the invocation of the public method. This means that all methods can be used with chain.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tapper

## Usage

```ruby
class User
  attr_accessor :name, :gender

  include Tapper

  def taro
    self.name = "taro"
  end

  def man
    self.gender = :man
  end
end
```

```ruby
user = User.new.taro.man
user.name # => "taro"
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tapper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Tapper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/y-yagi/tapper/blob/master/CODE_OF_CONDUCT.md).
