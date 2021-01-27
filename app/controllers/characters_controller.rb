class CharactersController < ApplicationController
  def index
    @characters = Character.all
    @q = Character.ransack(params[:q])
    @characters = @q.result(distinct: true)
  end
end
