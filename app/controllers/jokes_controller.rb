class JokesController < ApplicationController
    def index 
        @jokes = Joke.all
        render json: @jokes
    end
end
