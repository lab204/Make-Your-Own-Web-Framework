#coding: utf-8
require_relative "hamster/version"
require_relative "hamster/routing"
require_relative "hamster/util"
require_relative "hamster/dependencies"
require "erubis"
require "rack/request"

module Hamster
  class Application
    def call(env)
      if env["PATH_INFO"] == "/favicon.ico"
        return [404, {'Content-Type' => 'text/html'},
          []]
      end
      
      controller, action  = get_controller_and_action(env)
      content = controller.new(env).send(action)
      [200, {'Content-Type' => 'text/html'},
          [content]]
    end
  end

  class Controller

    def initialize(env)
      @env = env
    end

    def env
      @env
    end

    def render(view_name, locals = {})
      filename = File.join "app", "views", "#{view_name}.html.erb"
      template = File.read filename
      eruby = Erubis::Eruby.new(template)
      eruby.result locals.merge(:env => env)
    end

    def request
      @request = Rack::Request.new(@env)
    end

    def params
      request.params
    end
  end
end
