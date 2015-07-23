module Hamster
  class Application
    def get_controller_and_action(env)
      _, controller, action, last = env["PATH_INFO"].split "/", 4
      [Object.const_get(controller.capitalize + "Controller"), action]
    end
  end
end