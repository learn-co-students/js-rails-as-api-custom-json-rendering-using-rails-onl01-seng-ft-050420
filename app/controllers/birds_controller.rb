class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render json: birds
    # render json: birds, only: %i[ id name species]
    # render json: birds, except: %i[created_at updated_at]
    render json: birds.to_json(except: %i[created_at updated_at])
  end

  def show
    bird = Bird.find_by(id: params[:id])
    # render json: bird {id: bird.id, name: bird.name, species: bird.species}
    if bird 
      render json: bird.slice(:id, :name, :species)
    else
      render json: {message: "Bird not found"}
    end
  end
end