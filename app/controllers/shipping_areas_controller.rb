class ShippingAreasController < ApplicationController
  before_action :set_shipping_area, only: [:show, :edit, :update, :destroy]

  # GET /shipping_areas
  # GET /shipping_areas.json
  def index
    @shipping_areas = ShippingArea.all
  end

  # GET /shipping_areas/1
  # GET /shipping_areas/1.json
  def show
  end

  # GET /shipping_areas/new
  def new
    @shipping_area = ShippingArea.new
  end

  # GET /shipping_areas/1/edit
  def edit
  end

  # POST /shipping_areas
  # POST /shipping_areas.json
  def create
    @shipping_area = ShippingArea.new(shipping_area_params)

    respond_to do |format|
      if @shipping_area.save
        format.html { redirect_to @shipping_area, notice: 'Shipping area was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shipping_area }
      else
        format.html { render action: 'new' }
        format.json { render json: @shipping_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_areas/1
  # PATCH/PUT /shipping_areas/1.json
  def update
    respond_to do |format|
      if @shipping_area.update(shipping_area_params)
        format.html { redirect_to @shipping_area, notice: 'Shipping area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shipping_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_areas/1
  # DELETE /shipping_areas/1.json
  def destroy
    @shipping_area.destroy
    respond_to do |format|
      format.html { redirect_to shipping_areas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_area
      @shipping_area = ShippingArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipping_area_params
      params.require(:shipping_area).permit(:name, :cost)
    end
end
