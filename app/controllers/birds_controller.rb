class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
    render json: bird.slice(:id, :name, :species)
    #picking and choosing what we want to send after the json part
    else
      render json: {message: 'Bird not found'}
    end
  end
end