class HomeController < ApplicationController
  def index
    @user_count = User.count
    @channels = Channel.where(channel_on: true)
  end

  def about
    
  end
end
