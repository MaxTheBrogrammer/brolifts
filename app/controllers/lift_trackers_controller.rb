class LiftTrackersController < ApplicationController
  before_action :set_lift_tracker, only: [:show, :edit, :update, :destroy]

  # GET /lift_trackers
  # GET /lift_trackers.json
  def index
    @lift_trackers = LiftTracker.all
  end

  # GET /lift_trackers/1
  # GET /lift_trackers/1.json
  def show
  end

  # GET /lift_trackers/new
  def new
    @lift_tracker = LiftTracker.new
  end

  # GET /lift_trackers/1/edit
  def edit
  end

  # POST /lift_trackers
  # POST /lift_trackers.json
  def create
    @lift_tracker = LiftTracker.new(lift_tracker_params)

    respond_to do |format|
      if @lift_tracker.save
        format.html { redirect_to @lift_tracker, notice: 'Lift tracker was successfully created.' }
        format.json { render :show, status: :created, location: @lift_tracker }
      else
        format.html { render :new }
        format.json { render json: @lift_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lift_trackers/1
  # PATCH/PUT /lift_trackers/1.json
  def update
    respond_to do |format|
      if @lift_tracker.update(lift_tracker_params)
        format.html { redirect_to @lift_tracker, notice: 'Lift tracker was successfully updated.' }
        format.json { render :show, status: :ok, location: @lift_tracker }
      else
        format.html { render :edit }
        format.json { render json: @lift_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lift_trackers/1
  # DELETE /lift_trackers/1.json
  def destroy
    @lift_tracker.destroy
    respond_to do |format|
      format.html { redirect_to lift_trackers_url, notice: 'Lift tracker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lift_tracker
      @lift_tracker = LiftTracker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lift_tracker_params
      params.require(:lift_tracker).permit(:lifted_at, :user_id, :notes, :set_num, :num_of_reps, :exercise_id, :workout_id, :program_id, :program_group_id, :weight)
    end
end
