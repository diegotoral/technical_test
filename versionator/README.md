# Versionator

*versionator* is a small and not so useful Ruby gem for comparing simple version strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'versionator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install versionator

## Usage

*versionator* aims to be simple to use and so offers a very simple and specific API for comparing version strings.

You can create `Versionator::Version` objects in many ways. First, the old and good object instantiation:

```ruby
version = Versionator::Version.new '2.1'
```

or by using helper functions on the same fashion as `Kernel.Array`

```ruby
Version('1.3')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/versionator.
