class RestaurantEvaluationsController < ApplicationController
  before_action :set_restaurant_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_evaluations
  # GET /restaurant_evaluations.json
  def index
    @restaurant_evaluations = RestaurantEvaluation.all
  end

  # GET /restaurant_evaluations/1
  # GET /restaurant_evaluations/1.json
  def show
  end

  # GET /restaurant_evaluations/new
  def new
    @restaurant_evaluation = RestaurantEvaluation.new
  end

  # GET /restaurant_evaluations/1/edit
  def edit
  end

  # POST /restaurant_evaluations
  # POST /restaurant_evaluations.json
  def create
    @restaurant_evaluation = RestaurantEvaluation.new(restaurant_evaluation_params)

    respond_to do |format|
      if @restaurant_evaluation.save
        format.html { redirect_to @restaurant_evaluation, notice: 'Restaurant evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_evaluation }
      else
        format.html { render :new }
        format.json { render json: @restaurant_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_evaluations/1
  # PATCH/PUT /restaurant_evaluations/1.json
  def update
    respond_to do |format|
      if @restaurant_evaluation.update(restaurant_evaluation_params)
        format.html { redirect_to @restaurant_evaluation, notice: 'Restaurant evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_evaluations/1
  # DELETE /restaurant_evaluations/1.json
  def destroy
    @restaurant_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_evaluations_url, notice: 'Restaurant evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_evaluation
      @restaurant_evaluation = RestaurantEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_evaluation_params
      params.require(:restaurant_evaluation).permit(:restaurant_id, :company_id, :restaurant_evaluation_type_id, :value, :evaluation_by_user, :evaluation_time, :evaluation_comment)
    end
end
