class GamesController < ApplicationController
  before_filter :set_category
  def index
    @games = @category.games
  end

  def show
    @games = @category.games.find(params[:id])
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end

  # def create
  #   @game = Game.new(game_params)
  #   @game.category = @category
  #
  #   if @game.save
  #     redirect_to category_game_path(@category, @game)
  #
  # end
end
