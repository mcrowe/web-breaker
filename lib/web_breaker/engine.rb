module WebBreaker
  class Engine < ::Rails::Engine
    isolate_namespace WebBreaker
  end
end
