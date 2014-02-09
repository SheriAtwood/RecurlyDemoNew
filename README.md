Referring to the original 

# Recurly [![Build Status](https://secure.travis-ci.org/recurly/recurly-client-ruby.png)](http://travis-ci.org/recurly/recurly-client-ruby)

<https://github.com/recurly/recurly-client-ruby>

[Recurly](http://recurly.com/)'s Ruby client library is an interface to its
[REST API](http://docs.recurly.com/api/basics).


## Installation

Recurly is packaged as a Ruby gem. We recommend you install it with
[Bundler](http://gembundler.com/) by adding the following line to your Gemfile:

``` ruby
gem 'recurly', '~> 2.2.1'
```

Recurly will automatically use [Nokogiri](http://nokogiri.org/) (for a nice
speed boost) if it's available and loaded in your app's environment.


## Configuration

If you're using Rails, you can generate an initializer with the following
command:

``` bash
$ rails g recurly:config
```

If you're not using Rails, use the following template:

``` ruby
Recurly.subdomain      = ENV['RECURLY_SUBDOMAIN']
Recurly.api_key        = ENV['RECURLY_API_KEY']
Recurly.js.private_key = ENV['RECURLY_JS_PRIVATE_KEY']
```

Configure the client library with
[your API credentials](https://app.recurly.com/go/developer/api_access).

The default currency is USD. To override with a different code:

``` ruby
Recurly.default_currency = 'EUR' # Assign nil to disable the default entirely.
```

The client library currently uses a Net::HTTP adapter. If you need to
configure the settings passed to Net::HTTP (e.g., an SSL certificates path),
make sure you assign them before you make any requests:

``` ruby
Recurly::API.net_http = {
  :ca_path => "/etc/ssl/certs"
}
```


## Usage

Instructions and examples are available on
[Recurly's documentation site](http://docs.recurly.com/api/basics).

Recurly's gem API is available
[here](http://rubydoc.info/gems/recurly/2.1.9/frames).


## Contributing

Developing for the Recurly gem is easy with [Bundler](http://gembundler.com/).

Fork and clone the repository, `cd` into the directory, and, with a Ruby of
your choice (1.9.3 or greater), set up your
environment.

If you don't have Bundler installed, install it with the following command:

``` bash
$ [sudo] gem install bundler
```

And bundle:

``` bash
$ bundle --path=vendor/bundle
```

You should now be able to run the test suite with Rake:

``` bash
$ bundle exec rake
```

To run the suite using Nokogiri:

``` bash
$ XML=nokogiri bundle exec rake
```

If you plan on submitting a patch, please write tests for it (we use
[MiniTest::Spec](http://bfts.rubyforge.org/minitest/MiniTest/Expectations.html)).

If everything looks good, submit a pull request on GitHub and we'll bring in
your changes.
