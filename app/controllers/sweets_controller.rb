class SweetsController < ApplicationController
    def index
        render json: Sweet.all, only: [:id, :name]
    end

    def show
        sweet = Sweet.find(params[:id])
        render json: sweet, only: [:id, :name]
    end
end
