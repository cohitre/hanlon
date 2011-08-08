require 'haml'
require 'hanlon/version'
require 'hanlon/methods_finder'
require 'hanlon/template_loader'

module Hanlon
  def self.included base
    base.extend TemplateLoader
  end

  def execute_hanlon engine, name, *args
    @method_being_searched_for = name
    @arguments_for_method = args
    engine.render self
  end

  def hanlon name, &block
    (name.to_s == @method_being_searched_for) ?
      block.call(*@arguments_for_method) :
      ''
  end
end
