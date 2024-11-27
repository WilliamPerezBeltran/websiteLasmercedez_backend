class Api::V1::ImageFakesController < ApplicationController
  before_action :set_image_fake, only: [:show, :update, :destroy]

  def index
    @imagefakes = ImageFake.all
    render json: @imagefakes
  end

  def show
    render json: @imageFake
  end

  def create
    @imagefakes = ImageFake.new(image_fake_params)
    if @imagefakes.save
      render json: @imagefakes, status: :created
    else
      render json: { error: @imagefakes.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @imageFake.update(image_fake_params)
      render json: @imageFake, status: :ok
    else
      render json: { error: @imageFake.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @imageFake.destroy
      render json: { message: "item destroyed" }, status: :ok
    else
      render json: { message: "error in destroy item" }, status: :internal_server_error
    end
  end

  private 

  def image_fake_params
    params.require(:imageFake).permit(:path, :name, :typeImage, :url)
  end

  def set_image_fake
    @imageFake = ImageFake.find_by(id: params[:id])
    render json: { error: "image fake not found" }, status: :not_found unless @imageFake
  end
end
