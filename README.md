Grape::Swagger::Ui
===============

[![Code Climate](https://codeclimate.com/github/kendrikat/grape-swagger-ui.png)](https://codeclimate.com/github/kendrikat/grape-swagger-ui)

TODO/WIP: Write a gem description

Integrates [swagger-ui] with your "grapified" Rails3 application.

** UPDATE FOR 0.0.9 **
-

- The property for specifying your Swagger endpoint on SwaggerUi has been renamed from 'discoveryUrl' to just 'url'.  This has been updated in the index page template 'swagger.html.erb' but you will need to either regenerate or manually edit your existing page.

## Dependencies

* [grape-swagger]
> Add swagger compliant documentation to your grape API

* [grape]
> An opinionated micro-framework for creating REST-like APIs in Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'grape-swagger-ui'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grape-swagger-ui

## Usage example:

    # class YourAPI < Grape::API
    add_swagger_documentation :format => :json,
                              :api_version => 'v1',
                              :base_path => "http://#{Rails.configuration.default_host}/api/",
                              :hide_documentation_path => true

If your api path is "api/v1" just go to

    http://host:port/api/swagger

else

*Generate the main layout for customizations*

	rails generate swagger:layout

and change the initializer.

Since this is a seperate layout and if you want to use this in your staging environment you need to precompile it.

	#staging.rb
	config.assets.precompile += ["swagger_ui.css", "swagger_ui.js"]

## Version

0.0.9

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
MIT License, full text of license see [here][License]

*Free Software, Fuck Yeah!*

[License]: https://github.com/kendrikat/grape-swagger-ui/blob/master/LICENSE.txt "LICENSE"
[grape-swagger]: https://github.com/tim-vandecasteele/grape-swagger
[grape]: https://github.com/intridea/grape
[swagger-ui]: https://github.com/wordnik/swagger-ui/
