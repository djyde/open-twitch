class ChannelsController < ApplicationController
  def update
    @new_channel = Channel.find(params[:id]).update(new_params)
    redirect_to "/profile/#{params[:id]}"
  end

  private

    def new_params
      params.require(:channel).permit(:name,:description)
    end
end
