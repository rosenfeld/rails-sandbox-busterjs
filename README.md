# Buster.js tests/specs for the Rails asset pipeline

Run your specs while taking advantage of the Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'rails-sandbox-busterjs'

Or if you prefer to use the master branch:

    gem 'rails-sandbox-busterjs', git: 'git://github.com/rosenfeld/rails-sandbox-busterjs' # or:
    gem 'rails-sandbox-busterjs', github: 'rosenfeld/rails-sandbox-busterjs' # Bundler-pre syntax

And then execute:

    $ bundle

## Usage

    $ rake sandbox_assets:serve

If you only intend to use the Buster.js test runner with the Rails Sandbox Assets gem, you can
set the default template to 'busterjs/runner' in your config/application.rb, for example:

    config.sandbox_assets.template = 'busterjs/runner'

Then name your specs as test/javascripts/some\_test.js.coffee or spec/javascripts/some\_spec.js.coffee.

By default, this gem will only enable the Buster.js test runner for tests/specs under
test/javascripts/busterjs/ and spec/javascripts/busterjs/. Run them by browsing to http://localhost:5000/busterjs.

If you don't want the runner to include the BDD style you should add this option to config/development.rb:

    config.sandbox_assets.options[:skip_buster_bdd] = true

For more details on settings please take a look at the
[rails-sandbox-assets gem](http://github.com/rosenfeld/rails-sandbox-assets).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/rosenfeld/rails-sandbox-busterjs/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

