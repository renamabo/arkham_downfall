# frozen_string_literal: true

class Api::V1::CardsController < ApplicationController
  # GET /investigators or /investigators.json
  def index
    # if params[:type_code] == "investigator"
    #   investigator = CardFacade.all_cards
    #   render json: InvestigatorsSerializer
    # elsif params[:type_code] == "treachery" && params[:subtype_code] == "basicweakness"
    #   render json: WeaknessesSerializer.new()

  end

  # GET /investigators/1 or /investigators/1.json
  def show; end

  private

  def card_params
    params.permit(:type_code, :subtype_code, :name, :subname, :faction_name, :traits, :back_text, :back_flavor, :imagesrc, :backimagesrc)
  end
end
