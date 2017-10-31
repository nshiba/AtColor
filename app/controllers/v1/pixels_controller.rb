module V1
  class PixelsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create]

    # GET
    # Index users
    def index
      @pixels = Pixel.all
      render json: @pixels, each_serializer: V1::PixelSerializer, root: nil
    end

    # PUT
    # Create an user
    def update
      @pixel = Pixel.where(x: pixel_params[:x], y: pixel_params[:y])
      @pixel.update(color: pixel_params[:color])

      render json: @pixel, serializer: V1::PixelSerializer, root: nil
    end

    private

    def pixel_params
      params.permit(:x, :y, :color)
    end
  end
end
