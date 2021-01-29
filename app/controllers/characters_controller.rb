class CharactersController < ApplicationController
  def index
    @characters = Character.all
    @q = Character.ransack(params[:q])
    @characters = @q.result(distinct: true)
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to @character
    else
      render :new
    end
  end

  private

  def character_params
    params.require(:character).permit(%i[name description strength craft fate gold life starting_with_spell])
  end
end
