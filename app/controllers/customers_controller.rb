class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurants, only:[:index, :show, :create]
  before_action :expire_customers_table, only:[:create, :update, :destroy]
  # GET /customers
  # GET /customers.json
  def index
    unless fragment_exist?('customer_table')
      @customers = Customer.includes(:restaurant).all
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customers = Customer.all
    @restaurants = Restaurant.where.not(id: @customers.map(&:restaurant_id))
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    if params[:restaurant_id] != nil
      @customer.restaurant_id = params[:restaurant_id]
    end
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:restaurant_id, :start_date, :end_date)
    end

  def set_restaurants
    @restaurants = Restaurant.all
  end

  def expire_customers_table
    expire_fragment('customers_table')
  end
end
