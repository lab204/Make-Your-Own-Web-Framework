require_relative "hamster/version"

module Hamster
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
        ['hello world !']]
    end
  end
end
