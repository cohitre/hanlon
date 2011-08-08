module Hanlon
  class MethodsFinder
    def self.find engine
      Hanlon::MethodsFinder.new(engine).methods
    end

    def initialize engine
      @methods = []
      @engine = engine
    end

    def hanlon name, &block
      @methods.push name.to_s
    end

    def methods
      @engine.render(self)
      @methods
    end
  end
end
