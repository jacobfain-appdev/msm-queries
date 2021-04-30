class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    @movie_director =Director.where({:id=>Movie.all.at(0).director_id})
    render({:template => "movies_templates/index.html.erb"})
  end 
  def movie_details
    @movie_id = params.fetch("a_movie_id")
    @the_movie = Movie.where({:id => @movie_id}).at(0)
    d = Director.where({:id => @the_movie.director_id}).at(0)
    @director = d.name
    render({:template => "movies_templates/movie_details.html.erb"})
  end 
end
