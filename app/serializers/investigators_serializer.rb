# frozen_string_literal: true

class InvestigatorsSerializer
  class << self
    def new(investigator)
      {
        "data": {
          "name": investigator.name
          "subname": investigator.subname
          "faction_name": investigator.faction_name
          "traits": investigator.traits
          "back_text": investigator.back_text
          "back_flavor": investigator.back_flavor
          "image": investigator.imagesrc
          "backimage": investigator.backimagesrc
        }
      }
  end
end
