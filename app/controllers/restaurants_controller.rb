class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :set_companies_and_types, only: [:show, :edit, :update, :new, :create]
  before_action :expire_restaurants_table, only: [:create, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    unless fragment_exist?('restaurant_table')
      @restaurants = Restaurant.includes(:company, :restaurant_type).all
    end
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @restaurant_evals = RestaurantEvaluation.where(:restaurant_id => @restaurant.id).all
    @restaurant_contact_people = ContactPerson.where(:restaurant_id => @restaurant.id).all
    @restaurant_agreements = Agreement.where(:restaurant_id => @restaurant.id).all

    @customer = Customer.find_by_restaurant_id(@restaurant.id)
    if (@customer == nil)
      @isCustomer = false
    else
      @isCustomer = true
    end
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
    @restaurant.company_id = params[:company_id]
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

  def set_companies_and_types
    @companies = Company.all
    @restaurant_types = RestaurantType.all
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :company_id, :street_address, :city, :country, :phone_number, :email, :server_ip, :restaurant_type_id)
    end

  def expire_restaurants_table
    expire_fragment('restaurants_table')
  end
end
