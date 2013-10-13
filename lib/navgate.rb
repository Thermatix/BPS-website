require 'awesome_print'
require 'navgate/base'
class Navgate
  class Builder < Base

    def render_it_with(options)
      options_to_render = ""
      if options
        options.each do |k,v|
          options_to_render += ("#{k}=#{v}" + " ") unless ignore?(k)
        end
      end
      style = styling(options)
      text_to_render = ""
      self.selection.each do |select|
        text_to_render += "<a href=\"#{path_for(select)}\" #{options_to_render}>#{select}</a>#{style}"
      end
      text_to_render
    end

    private
      def path_for select
        self.namespace ? "/#{self.namespace}/#{select}" : "/#{select}"
      end

      def styling options
        if options
          return "<br>" if options[:verticle] == true
          return options[:spacing] if options[:spacing]
        end
        " "
      end

      def ignore? k
        k == :verticle || k == :spacing
      end

  end

  attr_accessor :controllers, :navs
  def initialize
    self.controllers = Rails.application.routes.routes.map do |route|
      route.defaults[:controller]
    end.uniq.compact
    self.navs = []
    yield(self)
    raise "Expected Navgate:Builder" unless self.navs.map{ |n| n.is_a?(Navgate::Builder)}.any?
  end

  def render_nav params, options = nil
    select_nav(params[:controller]).render_it_with(options).html_safe
  end

  def select params
    nav = select_nav(params[:controller])

    return params[:selection] ? params[:selection] : nav.default
  end
  private
    def select_nav controller
      self.navs.each do |nav|
        return nav if nav.controller == controller
      end
    end
end