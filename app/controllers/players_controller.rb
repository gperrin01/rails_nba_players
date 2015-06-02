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
    @url_embed = @player.video.gsub('watch?v=', 'embed/')
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    # why not just do params[:player] ?
    redirect_to(player_path)
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to(players_path)
  end

private
  def player_params
    params.require(:player).permit(:first_name, :last_name, :teams, :image, :video, :bio)
  end

end
