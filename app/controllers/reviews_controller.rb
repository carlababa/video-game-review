class ReviewsController < ApplicationController
  before_filter :set_game

  def index
    @reviews = @game.reviews
    respond_to do |f|
      f.html
      f.json {render json:{ reviews:@reviews, game: @game }}
  end
 end

 def show
   @review = @game.reviews.find(params[:id])

   respond_to do |f|
     f.html
     f.json {render json:{ reviews:@review, game: @game }}
   end
 end


 def new

 end

 def create
   @review = Review.new

   if @review.save
   render json: { task:@review, location: review_url(@review)}, status: 201 #created
   else
     render json: { errors: @review.errors }, status: 422 #unprocessable entity
   end
 end


  protected

  def set_game
    @game = Game.find(params[:game_id])
  end

end
