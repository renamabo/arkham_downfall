require './app/poros/card.rb'
class Card < ApplicationRecord

    def sort_investigators
        cards = CardFacade.all_cards
        cards.select do |card|
            card.type_code == "investigator"
        end
    end

    def sort_weaknesses
        cards = CardFacade.all_cards
        cards.select do |card|
            card.name != "Random Basic Weakness" && card.type_code == "treachery" && card.subtype_code == "basicweakness"
        end
    end
        
    def duplicate_weaknesses
        cards = CardFacade.all_cards
        cards.each do |card|
            if card.type_code == "treachery" && card.subtype_code == "basicweakness" && card.deck_limit == 2
                card.dup        
            end
        end
    end
end


    # map through payload, pull keys from hash if they are not in CARD_VARS constant.
    # def pool_unused_params(data)
    #     # if the card data's key appears in CARD_VARS, include in card data.
    #     # else, delete that key/value pair.
    #     data.map do |card_data|
    #         object_data = Hash.new
    #         card_data.map do |k, v|
    #             if Card::CARD_VARS.include?(k)
    #                 |h, k| h[k] = 
    #             else
    #                 k.delete
    #             end
    #         end
    #     end
    #     object_data
    # end