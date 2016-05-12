class SoftwareInAgreementsController < ApplicationController
  before_action :set_software_in_agreement, only: [:show, :edit, :update, :destroy]

  # GET /software_in_agreements
  # GET /software_in_agreements.json
  def index
    @software_in_agreements = SoftwareInAgreement.all
  end

  # GET /software_in_agreements/1
  # GET /software_in_agreements/1.json
  def show
  end

  # GET /software_in_agreements/new
  def new
    @software = Software.all
    @software_in_agreement = SoftwareInAgreement.new
  end

  # GET /software_in_agreements/1/edit
  def edit
    @software = Software.all
  end

  # POST /software_in_agreements
  # POST /software_in_agreements.json
  def create
    @software = Software.all
    @software_in_agreement = SoftwareInAgreement.new(software_in_agreement_params)

    respond_to do |format|
      if @software_in_agreement.save
        format.html { redirect_to @software_in_agreement, notice: 'Software in agreement was successfully created.' }
        format.json { render :show, status: :created, location: @software_in_agreement }
      else
        format.html { render :new }
        format.json { render json: @software_in_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /software_in_agreements/1
  # PATCH/PUT /software_in_agreements/1.json
  def update
    respond_to do |format|
      if @software_in_agreement.update(software_in_agreement_params)
        format.html { redirect_to @software_in_agreement, notice: 'Software in agreement was successfully updated.' }
        format.json { render :show, status: :ok, location: @software_in_agreement }
      else
        format.html { render :edit }
        format.json { render json: @software_in_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /software_in_agreements/1
  # DELETE /software_in_agreements/1.json
  def destroy
    @software_in_agreement.destroy
    respond_to do |format|
      format.html { redirect_to software_in_agreements_url, notice: 'Software in agreement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_software_in_agreement
      @software_in_agreement = SoftwareInAgreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def software_in_agreement_params
      params.require(:software_in_agreement).permit(:software_id, :agreement_id, :monthly_price)
    end
end
