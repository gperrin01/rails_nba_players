class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    # get params from the form
    Player.create(player_params)
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
    params.require(:player).permit(:first_name, :last_name, :teams, :image, :video)
  end

end
