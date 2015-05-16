class ChannelsController < ApplicationController

  layout 'channel'

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
end
