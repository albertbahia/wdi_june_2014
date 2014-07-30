class CardsController < ApplicationController

  def index
    @cards = Card.all
    render json: @cards
  end

  # builds a card based off of the params / sends back card in JSON format
  def create
    @card = Card.create(card_params)
    render json: @card
  end

  def update
    @card = Card.find(params[:id])
    @card.update(card_params)
    render json: @card
  end

  # finds card, destroys it, returns nothing
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    render nothing: true
  end

  def card_params
    params.require(:card).permit(:description, :completed)
  end

end
