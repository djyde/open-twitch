class HomeController < ApplicationController
  def index
    @games = Game.all
    @channels = Channel.where(channel_on: true).order('updated_at DESC')
  end

  def about
    
  end
end
