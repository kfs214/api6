class AnimalsController < ApplicationController
  include AnimalHelper
  
  before_action :set_animal, only: [:show]

  # GET /animals
  def index
    @animals = Animal.all

    render json: @animals
  end

  # GET /animals/1
  def show
    render json: @animal
  end

  # POST /animals
  def simple
    birthdays = params[:birthdays]

    @animal_codes = []

    birthdays.each do |birthday|
      animal_code = get_animal_code birthday

      animal_code_with_birthday = {birthday: birthday, animal_code: animal_code}

      @animal_codes.push animal_code_with_birthday
    end

    render json: @animal_codes, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end
end
