# Demisyn
[![Build Status](https://travis-ci.org/danielpclark/demisyn.svg)](https://travis-ci.org/danielpclark/demisyn)

With demisyn you'll never need to dot your methods again. *wink* *wink*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'demisyn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install demisyn

## Usage

Anywhere you want to use this you must first include this in the scope of its use.

```ruby
using Demisyn
```

Then you can evaluate strings and arrays of strings as if they were consecutive methods.
Returns `nil` if it fails.

Examples:

```ruby
~"'asdf' reverse split('s') join capitalize"
# => "Fda"
~%w['asdf' reverse split('s') join capitalize]
# => "Fda"
~"'asdf' pikachu split('s') join capitalize"
# => nil
~%w['asdf' pikachu split('s') join capitalize]
# => nil
```

This is not ideal if nil is a valid value you expected returned.  Think of it as similar
to the safe navigation usage.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/danielpclark/demisyn. This project is intended to be a safe, welcoming space for collaboration.


## License

Licensed under either of

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.
