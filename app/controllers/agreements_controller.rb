class AgreementsController < ApplicationController
  before_action :set_agreement, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurants_and_users, only: [:new, :edit, :create]

  # GET /agreements
  # GET /agreements.json
  def index
    @agreements = Agreement.all
  end

  def finances
    @active_agreements = Agreement.where("agreement_length = ? OR end_date > ?", 0, Date.today) #saakohan toistaiseksi voimassaolevia laskea näin...
    @software_monthly = SoftwareInAgreement.where(agreement_id: @active_agreements.map(&:id)).sum(:monthly_price)
    @device_monthly = DeviceInAgreement.where(agreement_id: @active_agreements.map(&:id)).sum(:monthly_price)

    @software_total = 0
    @device_total = 0
    @software_monthly_cost = 0
    @active_agreements.each do |agr|
      months = ((agr.end_date.year * 12 + agr.end_date.month) - (Date.today.year * 12 + Date.today.month))
      @software_total += months * SoftwareInAgreement.where(agreement_id: agr.id).sum(:monthly_price)
      @device_total += months * DeviceInAgreement.where(agreement_id: agr.id).sum(:monthly_price)
      @software_monthly_cost += months * SoftwareInAgreement.where(agreement_id: agr.id).map(&:software_id).uniq.map { |sia| Software.where(id: sia).map(&:BEL_price)}.sum.sum
    end

    @device_flat = DeviceInAgreement.where(:price_is_leasing => false).sum(:total_price)
    @device_flat_cost = Device.all.sum(:full_price)
    @device_monthly_cost = Device.all.sum("leasing_price * leasing_length")

    @total_flat = @device_flat - @device_flat_cost
    @total_monthly = @software_total + @device_total - @software_monthly_cost - @device_monthly_cost

  end

  # GET /agreements/1
  # GET /agreements/1.json
  def show
    @devices_in_this_agreement = DeviceInAgreement.where(:agreement_id => @agreement.id).all
    @software_in_this_agreement = SoftwareInAgreement.where(:agreement_id =>  @agreement.id).all

    @devices = Device.all
    @device_in_agreement = DeviceInAgreement.new
    @device_in_agreement.agreement_id = @agreement.id

    @software = Software.all
    @software_in_agreement = SoftwareInAgreement.new
    @software_in_agreement.agreement_id = @agreement.id
  end

  # GET /agreements/new
  def new
    @agreement = Agreement.new
  end

  # GET /agreements/1/edit
  def edit
  end

  # POST /agreements
  # POST /agreements.json
  def create
    @agreement = Agreement.new(agreement_params)
    @agreement.user_id = current_user.id

    respond_to do |format|
      if @agreement.save
        format.html { redirect_to @agreement, notice: 'Agreement was successfully created.' }
        format.json { render :show, status: :created, location: @agreement }
      else
        format.html { render :new }
        format.json { render json: @agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agreements/1
  # PATCH/PUT /agreements/1.json
  def update
    respond_to do |format|
      if @agreement.update(agreement_params)
        format.html { redirect_to @agreement, notice: 'Agreement was successfully updated.' }
        format.json { render :show, status: :ok, location: @agreement }
      else
        format.html { render :edit }
        format.json { render json: @agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agreements/1
  # DELETE /agreements/1.json
  def destroy
    @agreement.destroy
    respond_to do |format|
      format.html { redirect_to agreements_url, notice: 'Agreement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agreement
      @agreement = Agreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agreement_params
      params.require(:agreement).permit(:restaurant_id, :user_id, :start_date, :end_date, :agreement_length, :term_of_notice_in_months, :responsible_user_id, :invoicing_period_length, :invoicing_payment_time, :invoicing_date, :signed_by_customer)
    end

  def set_restaurants_and_users
    @restaurants = Restaurant.all
    @users = User.all
  end
end
