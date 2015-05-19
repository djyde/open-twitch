class HomeController < ApplicationController
  def index
    @user_count = User.count
    @channels = Channel.where(channel_on: true).order('updated_at DESC')
    @show_channel = Channel.where(show_on: true).first
  end

  def about
    
  end
end
