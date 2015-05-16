class HomeController < ApplicationController
  def index
    @games = Game.all
    @channels = Channel.where(channel_on: true)
  end
end
