class RouteDetailsController < ApplicationController
  #skip_before_action :authenticate_request
  before_action :set_route_detail, only: [:show, :edit, :update, :destroy]

  # GET /route_details
  # GET /route_details.json
  def index
    @route_details = RouteDetail.all
  end

  # GET /route_details/1
  # GET /route_details/1.json
  def show
  end

  # GET /route_details/new
  def new
    @route_detail = RouteDetail.new
  end

  # GET /route_details/1/edit
  def edit
  end

  # POST /route_details
  # POST /route_details.json
  def create
    @route_detail = RouteDetail.new(route_detail_params)

    respond_to do |format|
      if @route_detail.save
        format.html { redirect_to @route_detail, notice: 'Route detail was successfully created.' }
        format.json { render :show, status: :created, location: @route_detail }
      else
        format.html { render :new }
        format.json { render json: @route_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_details/1
  # PATCH/PUT /route_details/1.json
  def update
    respond_to do |format|
      if @route_detail.update(route_detail_params)
        format.html { redirect_to @route_detail, notice: 'Route detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_detail }
      else
        format.html { render :edit }
        format.json { render json: @route_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_details/1
  # DELETE /route_details/1.json
  def destroy
    @route_detail.destroy
    respond_to do |format|
      format.html { redirect_to route_details_url, notice: 'Route detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_detail
      @route_detail = RouteDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_detail_params
      params.require(:route_detail).permit(:maxPace, :avgPace, :movingPace, :maxSpeed, :avgSpeed, :movingSpeed, :routeLength, :totalTime, :movingTime, :date, :route_id)
    end
end
