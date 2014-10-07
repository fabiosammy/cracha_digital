class OldSystemsController < ApplicationController
  before_action :set_old_system, only: [:show, :edit, :update, :destroy]

  # GET /old_systems
  # GET /old_systems.json
  def index
    @old_systems = OldSystem.all
  end

  # GET /old_systems/1
  # GET /old_systems/1.json
  def show
  end

  # GET /old_systems/new
  def new
    @old_system = OldSystem.new
  end

  # GET /old_systems/1/edit
  def edit
  end

  # POST /old_systems
  # POST /old_systems.json
  def create
    @old_system = OldSystem.new(old_system_params)

    respond_to do |format|
      if @old_system.save
        format.html { redirect_to @old_system, notice: 'Old system was successfully created.' }
        format.json { render :show, status: :created, location: @old_system }
      else
        format.html { render :new }
        format.json { render json: @old_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_systems/1
  # PATCH/PUT /old_systems/1.json
  def update
    respond_to do |format|
      if @old_system.update(old_system_params)
        format.html { redirect_to @old_system, notice: 'Old system was successfully updated.' }
        format.json { render :show, status: :ok, location: @old_system }
      else
        format.html { render :edit }
        format.json { render json: @old_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_systems/1
  # DELETE /old_systems/1.json
  def destroy
    @old_system.destroy
    respond_to do |format|
      format.html { redirect_to old_systems_url, notice: 'Old system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_system
      @old_system = OldSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def old_system_params
      params.require(:old_system).permit(:username, :version)
    end
end
