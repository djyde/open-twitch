class ChannelsController < ApplicationController

  layout 'channel', only: [:show]

  before_action :authenticate_user!, :current_user_auth , except: [:show]

  def show
    @channel = Channel.find(params[:id])
  end

  def edit
    @channel = Channel.find(params[:id])
  end

  def update
    @new_channel = Channel.find(params[:id]).update(new_params)
    redirect_to profile_path(current_user.id)
  end

  private

    def new_params
      params.require(:channel).permit(:name,:description,:channel_on, :url)
    end

    def current_user_auth
      if current_user.id != Channel.find(params[:id]).user.id
        redirect_to root_path
      end
    end
end
