class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    # show the form
  end

  def create
    # get params from the form
    @player = Player.create(player_params)
    redirect_to(players_path)
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    # show the form
  end

  def update
    @player = Player.update(player_params)
    redirect_to(player_path)
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to(players_path)
  end

private
  def player_params
  end

end
