# Mod10

A simple gem to generate mod_10 check digits and check if integers are mod10
valid.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mod_10'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mod_10

## Usage

Include the Mod10 module to make the following two methods available
  - generate_check_digit(value)
    Which returns an integer value for the mod10 check digit of a string or integer.
    Note: If the value is 0, then the argument was already mod10 valid.

  - is_mod10?(value)
    Returns true or false for the tested value is it is or isn't mod10 valid.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mod_10/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
