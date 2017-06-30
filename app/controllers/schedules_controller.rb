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
  end

  # POST /schedules
  # POST /schedules.json
  def create
    day = params[:schedule][:day]
    month = params[:schedule][:month]
    year = params[:schedule][:year]
    shift1 = Shift.create(day: day, month: month, year: year, start: params[:schedule][:user1start], finish: params[:schedule][:user1finish])
    shift2 = Shift.create(day: day, month: month, year: year, start: params[:schedule][:user2start], finish: params[:schedule][:user2finish])
    shift3 = Shift.create(day: day, month: month, year: year, start: params[:schedule][:user3start], finish: params[:schedule][:user3finish])
    shift4 = Shift.create(day: day, month: month, year: year, start: params[:schedule][:user4start], finish: params[:schedule][:user4finish])

    if params[:schedule][:user1] != ""
      Schedule.create(user: User.find(params[:schedule][:user1]), shift: shift1)
    end
    if params[:schedule][:user2] != ""
      Schedule.create(user: User.find(params[:schedule][:user2]), shift: shift2)
    end
    if params[:schedule][:user3] != ""
      Schedule.create(user: User.find(params[:schedule][:user3]), shift: shift3)
    end
    if params[:schedule][:user4] != ""
      Schedule.create(user: User.find(params[:schedule][:user4]), shift: shift4)
    end
    respond_to do |format|
      format.html { redirect_to "/schedules?start_date=#{params[:schedule][:start_date]}", notice: 'Schedule was successfully created.' }
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
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
      params.require(:schedule).permit(:user, :shift)
    end
end
