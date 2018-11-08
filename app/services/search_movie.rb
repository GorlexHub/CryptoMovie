# Documentation de classe qui fait
# plaisir a rubocop
class SearchMovie
  attr_accessor :request, :result

  def initialize(movie)
    @request = movie
    @result = []
  end

  def perform
    Tmdb::Api.key(Rails.application.credentials.dig(:moviedb))
    @result = Tmdb::Search.movie(@request)
    # Tmdb::Movie.director(@result[0].id) # donne le director.
  end
end
