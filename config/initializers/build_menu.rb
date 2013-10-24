require 'navgate'
NAVGATE = Navgate.new do |build|
  build.ignoring = %w(session sessions)
  build.navs = [ Navgate::Builder.new do |options|
          options[:selection] = %w(selection news gallery user site misc )
          options[:default] = 'selection'
          options[:prefix] = "admin"
          options[:controller] = 'admin_panel'
        end,    Navgate::Builder.new do |options|
          options[:selection] = %w(Welcome News Gallery About_Us Members_login)
          options[:controller] = %w(front_page news gallery about_us members)
          options[:css_class] = 'nav links'
          options[:css_selected] = 'nav links selected'
        end
  ]
end