require 'bundler/setup'
require 'gtk3'
require_relative 'mediator'

class LoginFrame
  include Mediator

  def initialize(title)
    @window = Gtk::Window.new
    @window.title = title
    @window.signal_connect(:destroy) { Gtk.main_quit }
    @window.border_width = 200
    @window.show_all
  end

  def create_colleagues

  end

  def colleague_changed

  end

  # bbox = Gtk::ButtonBox.new(:horizontal)
  # window.add(bbox)
  #
  # button = Gtk::Button.new(label: 'Hello World')
  # button.signal_connect(:clicked) { puts 'Hello World' }
  # bbox.add(button)
  #
  # window.show_all
  # Gtk.main
end
