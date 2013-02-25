# Swagger::Ui::Rails

TODO/WIP: Write a gem description

This is experimental and my first gem :)

Integrates swagger-ui.js to your "grapified" Rails3 application.

Works best with :)
- grape-swagger => https://github.com/tim-vandecasteele/grape-swagger
- grape => https://github.com/intridea/grape

## Installation

Add this line to your application's Gemfile:

    gem 'swagger-ui-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install swagger-ui-rails

## Usage

TODO/WIP: Write usage instructions here

If your api path is "api/v1" just go to 

	http://localhost:3000/api/swagger

else

*Generate the main layout for customizations*

	rails generate swagger:layout
	
and change the initializer.

Since this is a seperate layout and if you want to use this in your staging environment you need to precompile it.

	#staging.rb
	config.assets.precompile += ["swagger_ui.css", "swagger_ui.js"]
	
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
