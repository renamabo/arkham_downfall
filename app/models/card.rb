class Card < ApplicationRecord
    CARD_VARS = ["pack_name", "type_code", "subtype_code", "faction_name", "code", "name", "subname", "text", "quantity", "deck_limit", "traits", "flavor", "permanent", "double_sided", "back_text", "back_flavor", "imagesrc", "backimagesrc"]
    CARDS = []
    # map through payload, pull keys from hash if they are not in CARD_VARS constant.

    # # to be tested
    # def sort_investigators
    #     cards = CardFacade.all_cards
    #     cards.select do |card|
    #         card.type_code == "investigator"
    #     end
    # end

    # # to be tested
    # def sort_weaknesses
    #     cards = CardFacade.all_cards
    #     cards.select do |card|
    #         card.name != "Random Basic Weakness" && card.type_code == "treachery" && card.subtype_code == "basicweakness"
    #     end
    # end
    
    # # to be tested
    # def duplicate_weaknesses
    #     cards = CardFacade.all_cards
    #     cards.each do |card|
    #         if card.type_code == "treachery" && card.subtype_code == "basicweakness" && card.deck_limit == 2
    #             card.dup        
    #         end
    #     end
    # end
end

