require 'bundler/setup'
require 'gtk3'
require_relative 'colleague'

class ColleagueTextField < Gtk::TextView
  include Colleague

  def initialize(buffer)
    super(buffer)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    activate(enabled)
  end

  def text_value_changed(text_event)
    @mediator.colleague_changed
  end
end
