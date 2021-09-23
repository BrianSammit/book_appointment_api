class SkateboardsController < ApplicationController

    def index
        skateboards = Skateboard.all
        render json: skateboards.to_json(only: [:brand, :id])
    end
end
