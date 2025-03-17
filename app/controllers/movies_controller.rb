class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def create
    @movie = Movie.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      movie_id: params[:movie_id]
    )
    render :show
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      first_name: params[:first_name] || @movie.first_name,
      last_name: params[:last_name] || @movie.last_name,
      known_for: params[:known_for] || @movie.known_for,
      movie_id: params[:movie_id] || @movie.movie_id
    )
    render :show
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: { message: "movie record destroyed" }
  end
end
