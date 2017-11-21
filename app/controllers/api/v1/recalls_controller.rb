class Api::V1::RecallsController < ApplicationController

    def index
      @recalls = Recall.all
      render json: @recalls
    end

    def show
      @recall = Recall.find(params[:id])
    end

end
