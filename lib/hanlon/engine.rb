module Hanlon
  class Engine
    def initialize hanlon_text, options={}
      @haml_engine = Haml::Engine.new hanlon_text, options
    end

    def module
      @module ||= process
    end

    def process
      loader = Hanlon::Loader.new
      @haml_engine.render loader
      @module = loader.build
    end

    def evaluate haml
      klass = Class.new
      klass.send :include, self.module
      engine = Haml::Engine.new haml
      engine.render klass.new
    end
  end
end
