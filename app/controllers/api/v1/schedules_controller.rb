class Api::V1::schedulesController < ApplicationController
  def index
    render json: Schedules.all
  end
end
