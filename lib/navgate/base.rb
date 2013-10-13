class Base
  attr_accessor :selection, :default, :namespace, :controller

  def initialize(&block)
    options = {selection: nil,default: nil}
    yield(options)
    raise "options[:selection] is not an Array or is blank" if options[:selection].nil? || !options[:selection].is_a?(Array)
    self.selection = options[:selection]
    self.default = options[:default] || self.selection.first
    self.namespace = options[:namespace]
    self.controller = "#{namespace?}#{options[:controller]}"

  end

  def namespace?
    self.namespace ? "#{self.namespace}/" : ""
  end

end