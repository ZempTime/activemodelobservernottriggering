class VacationSpotsController < ApplicationController
  before_action :set_vacation_spot, only: [:show, :edit, :update, :destroy]

  # GET /vacation_spots
  # GET /vacation_spots.json
  def index
    @vacation_spots = VacationSpot.all
  end

  # GET /vacation_spots/1
  # GET /vacation_spots/1.json
  def show
  end

  # GET /vacation_spots/new
  def new
    @vacation_spot = VacationSpot.new
  end

  # GET /vacation_spots/1/edit
  def edit
  end

  # POST /vacation_spots
  # POST /vacation_spots.json
  def create
    @vacation_spot = VacationSpot.new(vacation_spot_params)

    respond_to do |format|
      if @vacation_spot.save
        format.html { redirect_to @vacation_spot, notice: 'Vacation spot was successfully created.' }
        format.json { render :show, status: :created, location: @vacation_spot }
      else
        format.html { render :new }
        format.json { render json: @vacation_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacation_spots/1
  # PATCH/PUT /vacation_spots/1.json
  def update
    respond_to do |format|
      if @vacation_spot.update(vacation_spot_params)
        format.html { redirect_to @vacation_spot, notice: 'Vacation spot was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacation_spot }
      else
        format.html { render :edit }
        format.json { render json: @vacation_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacation_spots/1
  # DELETE /vacation_spots/1.json
  def destroy
    @vacation_spot.destroy
    respond_to do |format|
      format.html { redirect_to vacation_spots_url, notice: 'Vacation spot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacation_spot
      @vacation_spot = VacationSpot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacation_spot_params
      params.require(:vacation_spot).permit(:name)
    end
end
