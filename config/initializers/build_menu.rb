require 'navgate'
NAVGATE = Navgate.new do |menu|
  menu.navs = [ Navgate::Builder.new do |options|
          options[:selection] = %w(welcome about_us gallery )
          options[:default] = "welcome"
          options[:controller] = 'front_page'
        end,
           Navgate::Builder.new do |options|
            options[:selection] = %w(selection site_settings users images misc)
            options[:defualt] = 'selection'
            options[:namespace] = 'admin'
            options[:controller] = 'admin_panel'
          end
  ]
end