require 'bundler/setup'
require 'gtk3'
require_relative 'colleague'

class ColleagueButton < Gtk::Button
  include Colleague

  def initialize(caption)
    super(label: caption)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(enabled)
    activate(enabled)
  end
end
