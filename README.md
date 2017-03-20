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

Anywhere you want to use this (within Objects) you must first include this
in the scope of its use.

```ruby
using Demisyn
```

Then you can evaluate strings and arrays of strings as if they were consecutive methods.

### Examples

```ruby
~"'asdf' reverse split('s') join capitalize"
# => "Fda"
~%w['asdf' reverse split('s') join capitalize]
# => "Fda"

~"'asdf' pikachu split('s') join capitalize"
#NoMethodError: undefined method
~%w['asdf' pikachu split('s') join capitalize]
#NoMethodError: undefined method
```
Note to execute Demisyn in this fashion you must use the tilde before an Array or String.

#### Ruby 2.3.0

Since Ruby 2.3.0 has added the safe navigation operator I've made that available for your
method chain.  Instead of using tilde before a String or Array use the minus symbol.

```ruby
-"'asdf' reverse split('s') join capitalize"
# => "Fda"

-"'asdf'[7] reverse split('s') join capitalize"
# => nil
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/danielpclark/demisyn. This project is intended to be a safe, welcoming space for collaboration.


## License

Licensed under either of

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.
