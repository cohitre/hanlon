module Hanlon
  class Loader
    def initialize
      @loaded_methods = {}
    end

    def add_method name, &block
      @loaded_methods[name] = block
    end

    def hanlon name, &block
      add_method name do |*helper_args|
        capture_haml *helper_args, &block
      end
    end

    def [] name
      @loaded_methods[name]
    end

    def build
      loaded_methods = @loaded_methods
      Module.new do
        loaded_methods.each_pair do |key, value|
          define_method key, value
        end
      end
    end
  end
end
