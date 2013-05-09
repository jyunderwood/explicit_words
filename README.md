# ExplicitWords

[![Build Status](https://travis-ci.org/jyunderwood/explicit_words.png?branch=master)](https://travis-ci.org/jyunderwood/explicit_words)

A ruby library for dealing with content that may have explicit words in it.

Currently this gem is very rudimentary, and the only functionality it has is to return true or false if a given string has explicit words.

Used at [SixWordStories.com](http://sixwordstories.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'explicit_words'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install explicit_words

## Usage

```ruby
explicit_content = "I'm wondering if this thing fucking works."
ExplicitWords.check(explicit_content) # => true

clean_content = "I'm sure it's working just fine."
ExplicitWords.check(clean_content)    # => false
```

## TODO List

- Return a count of explicits
- Return content with explicits filtered/masked
- Allow users to configure a dictionary
- Allow for different storage options instead of a flat file
- Return a explicit percentage on a scale of 0.0 to 1.0

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Licensed under the MIT License.
