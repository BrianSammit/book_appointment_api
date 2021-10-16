class SkateboardsController < ApplicationController
  def index
    skateboards = Skateboard.all
    render json: skateboards.to_json(only: %i[brand id image])
  end

  def show
    skateboard = Skateboard.find(params[:id])
    render json: skateboard.to_json(only: %i[brand id image])
  end
end
