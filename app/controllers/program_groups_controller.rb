class ProgramGroupsController < ApplicationController
  before_action :set_program_group, only: [:show, :edit, :update, :destroy]

  # GET /program_groups
  # GET /program_groups.json
  def index
    @program_groups = ProgramGroup.all
  end

  # GET /program_groups/1
  # GET /program_groups/1.json
  def show
  end

  # GET /program_groups/new
  def new
    @program_group = ProgramGroup.new
  end

  # GET /program_groups/1/edit
  def edit
  end

  # POST /program_groups
  # POST /program_groups.json
  def create
    @program_group = ProgramGroup.new(program_group_params)

    respond_to do |format|
      if @program_group.save
        format.html { redirect_to @program_group, notice: 'Program group was successfully created.' }
        format.json { render :show, status: :created, location: @program_group }
      else
        format.html { render :new }
        format.json { render json: @program_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_groups/1
  # PATCH/PUT /program_groups/1.json
  def update
    respond_to do |format|
      if @program_group.update(program_group_params)
        format.html { redirect_to @program_group, notice: 'Program group was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_group }
      else
        format.html { render :edit }
        format.json { render json: @program_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_groups/1
  # DELETE /program_groups/1.json
  def destroy
    @program_group.destroy
    respond_to do |format|
      format.html { redirect_to program_groups_url, notice: 'Program group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_group
      @program_group = ProgramGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_group_params
      # params.require(:program_group).permit(:user_id, :public, :name, :description)
      params.require(:program_group).permit(:user_id, :public, :name, :description, programs_attributes: [:id, :user_id, :public, :name, :description, :_destroy])
    end
end
