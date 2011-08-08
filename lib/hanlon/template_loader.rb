module Hanlon
  module TemplateLoader
    def load_template template
      engine = Haml::Engine.new template
      MethodsFinder.find(engine).each do |name|
        define_method name do |*args|
          execute_hanlon engine, name, *args
        end
      end
    end
  end
end
