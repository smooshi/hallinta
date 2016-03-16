class OtherBillingInAgreementsController < ApplicationController
  before_action :set_other_billing_in_agreement, only: [:show, :edit, :update, :destroy]

  # GET /other_billing_in_agreements
  # GET /other_billing_in_agreements.json
  def index
    @other_billing_in_agreements = OtherBillingInAgreement.all
  end

  # GET /other_billing_in_agreements/1
  # GET /other_billing_in_agreements/1.json
  def show
  end

  # GET /other_billing_in_agreements/new
  def new
    @other_billing_in_agreement = OtherBillingInAgreement.new
  end

  # GET /other_billing_in_agreements/1/edit
  def edit
  end

  # POST /other_billing_in_agreements
  # POST /other_billing_in_agreements.json
  def create
    @other_billing_in_agreement = OtherBillingInAgreement.new(other_billing_in_agreement_params)

    respond_to do |format|
      if @other_billing_in_agreement.save
        format.html { redirect_to @other_billing_in_agreement, notice: 'Other billing in agreement was successfully created.' }
        format.json { render :show, status: :created, location: @other_billing_in_agreement }
      else
        format.html { render :new }
        format.json { render json: @other_billing_in_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_billing_in_agreements/1
  # PATCH/PUT /other_billing_in_agreements/1.json
  def update
    respond_to do |format|
      if @other_billing_in_agreement.update(other_billing_in_agreement_params)
        format.html { redirect_to @other_billing_in_agreement, notice: 'Other billing in agreement was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_billing_in_agreement }
      else
        format.html { render :edit }
        format.json { render json: @other_billing_in_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_billing_in_agreements/1
  # DELETE /other_billing_in_agreements/1.json
  def destroy
    @other_billing_in_agreement.destroy
    respond_to do |format|
      format.html { redirect_to other_billing_in_agreements_url, notice: 'Other billing in agreement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_billing_in_agreement
      @other_billing_in_agreement = OtherBillingInAgreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_billing_in_agreement_params
      params.require(:other_billing_in_agreement).permit(:agreement_id, :description, :total_price, :monthly_price)
    end
end
