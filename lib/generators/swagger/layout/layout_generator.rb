module Swagger
  module Generators
    class LayoutGenerator < ::Rails::Generators::Base
      desc 'Setup a dedicated layout for the swagger-ui'

      def self.source_root
        File.expand_path('../templates', __FILE__)
      end

      def create_swagger_layout        
        template 'swagger.html.haml', File.join('app', 'views', 'layouts', 'swagger.html.haml')
      end        
    end
  end
end