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
    shift1 = Shift.create(day: day, month: month, year: year, start: "open", finish: '500')
    shift2 = Shift.create(day: day, month: month, year: year, start: "500", finish: 'close')
    shift3 = Shift.create(day: day, month: month, year: year, start: "600", finish: 'close')
    shift4 = Shift.create(day: day, month: month, year: year, start: "630", finish: 'close')
    user1 = User.find(params[:schedule][:user_id1])
    user2 = User.find(params[:schedule][:user_id2])
    user3 = User.find(params[:schedule][:user_id3])
    user4 = User.find(params[:schedule][:user_id4])
    schedule1 = Schedule.new(user: user1, shift: shift1)
    schedule2 = Schedule.new(user: user2, shift: shift2)
    schedule3 = Schedule.new(user: user3, shift: shift3)
    schedule4 = Schedule.new(user: user4, shift: shift4)
    respond_to do |format|
      if schedule1.save && schedule2.save && schedule3.save && schedule4.save
        format.html { redirect_to schedules_path, notice: 'Schedule was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
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
