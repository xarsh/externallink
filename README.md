# Externallink

Helper to detect external urls.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'externallink'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install externallink

## Usage

This gem works out of the box for Rails applications and provides the following helpers.

### `external_url?`

Checks if the given URL is external or not.
Example (when the app domain is example.com):

```ruby
external_url?("http://www.google.com") # => true
external_url?("/foo") # => false
external_url?("http://example.com/foo") # => false
```

### `internal_url?`

The opposite behavior of `external_url?`


## Contributing

1. Fork it ( https://github.com/xarsh/externallink/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
