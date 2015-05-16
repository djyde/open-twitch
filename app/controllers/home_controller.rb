class HomeController < ApplicationController
  def index
    @games = Game.all
    @users = User.all
  end
end
