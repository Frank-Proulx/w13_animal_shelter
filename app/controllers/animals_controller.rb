class AnimalsController < ApplicationController

  def index
    
    json_response(@quotes)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end