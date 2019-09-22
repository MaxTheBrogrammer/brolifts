class WorkoutDaysController < ApplicationController
  before_action :set_workout_day, only: [:show, :edit, :update, :destroy]

  # GET /workout_days
  # GET /workout_days.json
  def index
    @workout_days = WorkoutDay.all
  end

  # GET /workout_days/1
  # GET /workout_days/1.json
  def show
  end

  # GET /workout_days/new
  def new
    @workout_day = WorkoutDay.new
  end

  # GET /workout_days/1/edit
  def edit
  end

  # POST /workout_days
  # POST /workout_days.json
  def create
    @workout_day = WorkoutDay.new(workout_day_params)

    respond_to do |format|
      if @workout_day.save
        format.html { redirect_to @workout_day, notice: 'Workout day was successfully created.' }
        format.json { render :show, status: :created, location: @workout_day }
      else
        format.html { render :new }
        format.json { render json: @workout_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_days/1
  # PATCH/PUT /workout_days/1.json
  def update
    respond_to do |format|
      if @workout_day.update(workout_day_params)
        format.html { redirect_to @workout_day, notice: 'Workout day was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_day }
      else
        format.html { render :edit }
        format.json { render json: @workout_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_days/1
  # DELETE /workout_days/1.json
  def destroy
    @workout_day.destroy
    respond_to do |format|
      format.html { redirect_to workout_days_url, notice: 'Workout day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_day
      @workout_day = WorkoutDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_day_params
      params.require(:workout_day).permit(:user_id, :work_out_at, :program_group_id, :program_id, :workout_id)
    end
end
