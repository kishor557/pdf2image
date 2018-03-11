# Pdf2image

Welcome to pdf2image gem.

pdf2image accepts pdf file path as input string and it will convert pdf file into a jpeg image format.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pdf2image'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdf2image

## Usage

pdf2image gem usage is very simple. you just need to require it into your code using
  
    require 'pdf2image'
    
    ## Just to make sure pdf2image is loaded or not
    $  Pdf2image.welcome
    You are using Pdf2image Gem!!
    
    ## to convert pdf file into image
    $  Pdf2image.convert("sample pdf path")


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pdf2image/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
