module Solargraph
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Solargraph::Rails
    end
  end
end
