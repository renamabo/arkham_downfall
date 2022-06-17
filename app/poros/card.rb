class Card
    attr_reader :pack_name,
                :faction_name,
                :code,
                :name,
                :subname,
                :text,
                :quantity,
                :deck_limit,
                :traits,
                :permanent
                
    def initialize(card_data)
        @pack_name = card_data[:pack_name]
        @faction_name = card_data[:faction_name]
        @code = card_data[:code]
        @name = card_data[:name]
        @subname = card_data[:subname]
        @text = card_data[:text]
        @quantity = card_data[:quantity]
        @deck_limit = card_data[:deck_limit]
        @traits = card_data[:traits]
        @permanent = card_data[:permanent]
    end
end