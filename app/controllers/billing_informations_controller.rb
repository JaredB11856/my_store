class BillingInformationsController < ApplicationController
  before_action :set_billing_information, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /billing_informations
  def index
    @billing_informations = BillingInformation.all
  end

  # GET /billing_informations/1
  def show
  end

  # GET /billing_informations/new
  def new
    @billing_information = BillingInformation.new
  end

  # GET /billing_informations/1/edit
  def edit
  end

  # POST /billing_informations
  def create
    @billing_information = BillingInformation.new(billing_information_params)

    if @billing_information.save
      redirect_to @billing_information, notice: 'Billing information was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /billing_informations/1
  def update
    if @billing_information.update(billing_information_params)
      redirect_to @billing_information, notice: 'Billing information was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /billing_informations/1
  def destroy
    @billing_information.destroy
    redirect_to billing_informations_url, notice: 'Billing information was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_information
      @billing_information = BillingInformation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def billing_information_params
      params.require(:billing_information).permit(:name, :address_line_1, :address_line_2, :city, :state, :zip_code, :phone_number, :cc_type, :cc_last_four, :user_id, :invoice_id)
    end
end
