class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
    @times = Schedule::TIMES
  end

  # GET /schedules/1/edit
  def edit
    @times = Schedule::TIMES
  end

  # POST /schedules
  # POST /schedules.json
  def create
    params[:schedule][:users].each  do |user|
      if user[:user] != ""
        shift = Shift.create(date: user[:date], start: user[:start], finish: user[:finish])
        Schedule.create(user: User.find(user[:user]), shift: shift)
      end
    end

    respond_to do |format|
      format.html { redirect_to "/schedules?start_date=#{params[:schedule][:start_date]}", notice: 'Schedule was successfully created.' }
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      binding.pry
      User.find(params[:id])
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
        binding.pry

      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
        binding.pry
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:user_id, :shift_id)
    end
end
