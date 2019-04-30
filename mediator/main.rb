require 'bundler/setup'
require 'gtk3'
require_relative 'login_frame'

class Main
  LoginFrame.new('Mediator Sample')
  Gtk.main
end
