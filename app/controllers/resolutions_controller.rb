class ResolutionsController < ApplicationController

    def index
        @resolutions = Resolution.all 

        render json: @resolutions
    end

    def show
        @resolution = Resolution.find(params[:id])

        render json: @resolution
    end

    def create
        @resolution = Resolution.create(
            style: params[:style],
            description: params[:description],
            image: params[:image],
            location: params[:location]
        )

        render json: @resolution
    end

    def update
        @resolution = Resolution.find(params[:id])
        @resolution.update(
            style: params[:style],
            description: params[:description],
            image: params[:image],
            location: params[:location]
        )

        render json: @resolution
    end

    def destroy
        @resolution = Resolution.find(params[:id])
        @resolution.destroy

        render json: {message: "Resolution removed!"}
    end
end
