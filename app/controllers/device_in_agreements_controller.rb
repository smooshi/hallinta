class DeviceInAgreementsController < ApplicationController
  before_action :set_device_in_agreement, only: [:show, :edit, :update, :destroy]
  before_action :set_devices, only: [:new, :create, :update, :edit]
  # GET /device_in_agreements
  # GET /device_in_agreements.json
  def index
    @device_in_agreements = DeviceInAgreement.all
  end

  # GET /device_in_agreements/1
  # GET /device_in_agreements/1.json
  def show
  end

  # GET /device_in_agreements/new
  def new
    @device_in_agreement = DeviceInAgreement.new
  end

  # GET /device_in_agreements/1/edit
  def edit
  end

  # POST /device_in_agreements
  # POST /device_in_agreements.json
  def create
    @device_in_agreement = DeviceInAgreement.new(device_in_agreement_params)
    @agreement = Agreement.find_by_id(@device_in_agreement.agreement_id)
    respond_to do |format|
      if @device_in_agreement.save
        format.html { redirect_to @agreement, notice: 'Device in agreement was successfully created.' }
        format.json { render :show, status: :created, location: @device_in_agreement }
      else
        format.html { render :new }
        format.json { render json: @device_in_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_in_agreements/1
  # PATCH/PUT /device_in_agreements/1.json
  def update
    @agreement = Agreement.find_by_id(@device_in_agreement.agreement_id)
    respond_to do |format|
      if @device_in_agreement.update(device_in_agreement_params)
        format.html { redirect_to @agreement, notice: 'Device in agreement was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_in_agreement }
      else
        format.html { render :edit }
        format.json { render json: @device_in_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_in_agreements/1
  # DELETE /device_in_agreements/1.json
  def destroy
    @agreement = Agreement.find_by_id(@device_in_agreement.agreement_id)
    @device_in_agreement.destroy
    respond_to do |format|
      format.html { redirect_to @agreement, notice: 'Device in agreement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_in_agreement
      @device_in_agreement = DeviceInAgreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_in_agreement_params
      params.require(:device_in_agreement).permit(:agreement_id, :device_id, :price_is_leasing, :total_price, :monthly_price)
    end

    def set_devices
      @devices = Device.all
    end
end
