require 'hamster'
$LOAD_PATH << File.join(File.dirname(__FILE__),
  "..","app","controllers")

module Hello
  class Application < Hamster::Application
  end
end
