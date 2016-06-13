class HooplahsController < ApplicationController
  before_action :set_hooplah, only: [:show, :edit, :update, :destroy]

  # GET /hooplahs
  # GET /hooplahs.json
  def index
    @hooplahs = Hooplah.all
  end

  # GET /hooplahs/1
  # GET /hooplahs/1.json
  def show
  end

  # GET /hooplahs/new
  def new
    @hooplah = Hooplah.new
  end

  # GET /hooplahs/1/edit
  def edit
  end

  # POST /hooplahs
  # POST /hooplahs.json
  def create
    @hooplah = Hooplah.new(hooplah_params)

    respond_to do |format|
      if @hooplah.save
        format.html { redirect_to @hooplah, notice: 'Hooplah was successfully created.' }
        format.json { render :show, status: :created, location: @hooplah }
      else
        format.html { render :new }
        format.json { render json: @hooplah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hooplahs/1
  # PATCH/PUT /hooplahs/1.json
  def update
    respond_to do |format|
      if @hooplah.update(hooplah_params)
        format.html { redirect_to @hooplah, notice: 'Hooplah was successfully updated.' }
        format.json { render :show, status: :ok, location: @hooplah }
      else
        format.html { render :edit }
        format.json { render json: @hooplah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hooplahs/1
  # DELETE /hooplahs/1.json
  def destroy
    @hooplah.destroy
    respond_to do |format|
      format.html { redirect_to hooplahs_url, notice: 'Hooplah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hooplah
      @hooplah = Hooplah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hooplah_params
      params.require(:hooplah).permit(:vacation_spot_id, :description)
    end
end
