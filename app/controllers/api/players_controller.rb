class PlayersController < ApplicationController
  def index
    @player = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save

    else

    end
  end

  private

  def player_params
    params.require(:player).permit(%i[name
                                      character_id
                                      strength
                                      craft
                                      fate
                                      gold
                                      life
                                      game_id])
  end
end