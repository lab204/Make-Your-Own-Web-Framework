require_relative "hamster/version"
require_relative "hamster/routing"

module Hamster
  class Application
    def call(env)
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
  end
end
