require 'bundler/setup'
require 'gtk3'
require_relative 'colleague'

class ColleagueCheckBox < Gtk::CheckButton
  include Colleague

  def initialize(caption)
    super(caption)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    activate(enabled)
  end

  def item_state_changed(item_event)
    @mediator.colleague_changed
  end
end
