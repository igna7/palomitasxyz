class MoviesController < ApplicationController
	before_action :find_movie, only: [:show,:edit,:update,:destroy]
	def index
		@movie = Movie.all.order("created_at DESC")
	end
	def show
	end
	def new
		@movie = Movie.new
	end
	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to @movie, notice: "Se ha agregado correctamente tu película"
		else
			render 'new'
		end
	end
	def edit
	end
	def update
		if @movie.update(movie_params)
			redirect_to @movie
		else
			render 'edit'
		end
	end
	def destroy
		@movie.destroy
		redirect_to root_path, notice: "Se ha eliminado correctamente tu película"
	end

	private 
	def movie_params
		params.require(:movie).permit(:title,:description,:cover)
	end
	def find_movie
		@movie = Movie.find(params[:id])
	end
end
