class PublicRouteRecordsController < ApplicationController
  skip_before_action :authenticate_request

  before_action :set_public_route_record, only: [:show, :edit, :update, :destroy]

  # GET /public_route_records
  # GET /public_route_records.json
  def index
    @public_route_records = PublicRouteRecord.all
  end

  # GET /public_route_records/1
  # GET /public_route_records/1.json
  def show
  end

  # GET /public_route_records/new
  def new
    @public_route_record = PublicRouteRecord.new
  end

  # GET /public_route_records/1/edit
  def edit
  end

  # POST /public_route_records
  # POST /public_route_records.json
  def create
    @public_route_record = PublicRouteRecord.new(public_route_record_params)

    respond_to do |format|
      if @public_route_record.save
        format.html { redirect_to @public_route_record, notice: 'Public route record was successfully created.' }
        format.json { render :show, status: :created, location: @public_route_record }
      else
        format.html { render :new }
        format.json { render json: @public_route_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_route_records/1
  # PATCH/PUT /public_route_records/1.json
  def update
    respond_to do |format|
      if @public_route_record.update(public_route_record_params)
        format.html { redirect_to @public_route_record, notice: 'Public route record was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_route_record }
      else
        format.html { render :edit }
        format.json { render json: @public_route_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_route_records/1
  # DELETE /public_route_records/1.json
  def destroy
    @public_route_record.destroy
    respond_to do |format|
      format.html { redirect_to public_route_records_url, notice: 'Public route record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_route_record
      @public_route_record = PublicRouteRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_route_record_params
      params.require(:public_route_record).permit(:userID, :petID, :route, :location, :isActive, :date)
    end
end
