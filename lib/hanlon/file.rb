module Hanlon
  class File
    def self.load file
      f = self.new "#{file}.hanlon"
      f.module
    end

    def initialize filename
      @template = ::File.read(filename)
      @engine = Hanlon::Engine.new @template
    end

    def module
      @module ||= @engine.module
    end
  end
end
