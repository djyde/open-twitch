class HomeController < ApplicationController
  def index
    @user_count = User.count
    @channels = Channel.where(channel_on: true).order('updated_at DESC')
  end

  def about
    
  end
end
