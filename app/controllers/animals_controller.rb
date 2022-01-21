class AnimalsController < ApplicationController
  def random
    @animals = Animal.all.shuffle.sample
    json_response(@animals)
  end

  def index
    if !params[:page]
      @animals = Animal.all
    else
      @animals = Animal.paginate(page: params[:page], per_page: 5)
    end
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "This animal has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      render status: 200, json: {
      message: "This animal has been deleted successfully."
      }
    end
  end

  def animal_params
    params.permit(:name, :species, :age, :breed, :sex)
  end
end