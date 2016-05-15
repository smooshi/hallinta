class RestaurantEvaluationTypesController < ApplicationController
  before_action :set_restaurant_evaluation_type, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_evaluation_types
  # GET /restaurant_evaluation_types.json
  def index
    @restaurant_evaluation_types = RestaurantEvaluationType.all
  end

  # GET /restaurant_evaluation_types/1
  # GET /restaurant_evaluation_types/1.json
  def show
    @restaurant_evaluations = RestaurantEvaluation.where(:restaurant_evaluation_type_id => @restaurant_evaluation_type.id).all
  end

  # GET /restaurant_evaluation_types/new
  def new
    @restaurant_evaluation_type = RestaurantEvaluationType.new
  end

  # GET /restaurant_evaluation_types/1/edit
  def edit
  end

  # POST /restaurant_evaluation_types
  # POST /restaurant_evaluation_types.json
  def create
    @restaurant_evaluation_type = RestaurantEvaluationType.new(restaurant_evaluation_type_params)

    respond_to do |format|
      if @restaurant_evaluation_type.save
        format.html { redirect_to restaurant_evaluation_types_path, notice: 'Restaurant evaluation type was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_evaluation_type }
      else
        format.html { render :new }
        format.json { render json: @restaurant_evaluation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_evaluation_types/1
  # PATCH/PUT /restaurant_evaluation_types/1.json
  def update
    respond_to do |format|
      if @restaurant_evaluation_type.update(restaurant_evaluation_type_params)
        format.html { redirect_to restaurant_evaluation_types_path, notice: 'Restaurant evaluation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_evaluation_type }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_evaluation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_evaluation_types/1
  # DELETE /restaurant_evaluation_types/1.json
  def destroy
    @restaurant_evaluation_type.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_evaluation_types_url, notice: 'Restaurant evaluation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_evaluation_type
      @restaurant_evaluation_type = RestaurantEvaluationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_evaluation_type_params
      params.require(:restaurant_evaluation_type).permit(:name, :description)
    end
end
