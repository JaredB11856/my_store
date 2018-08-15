class CreditCardsController < ApplicationController
  before_action :set_credit_card, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /credit_cards
  def index
    @credit_cards = CreditCard.all
  end

  # GET /credit_cards/1
  def show
  end

  # GET /credit_cards/new
  def new
    @credit_card = CreditCard.new
  end

  # GET /credit_cards/1/edit
  def edit
  end

  # POST /credit_cards
  def create
    @credit_card = CreditCard.new(credit_card_params)
    if @credit_card.save  
      redirect_to order_summary_path
    else
      render :new
    end
  end

  # PATCH/PUT /credit_cards/1
  def update
    if @credit_card.update(credit_card_params)
      redirect_to @credit_card, notice: 'Credit card was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /credit_cards/1
  def destroy
    @credit_card.destroy
    redirect_to credit_cards_url, notice: 'Credit card was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card
      @credit_card = CreditCard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def credit_card_params
      params.require(:credit_card).permit(:name, :expiration_mm, :expiration_yy, :card_number, :cvc)
    end
end
