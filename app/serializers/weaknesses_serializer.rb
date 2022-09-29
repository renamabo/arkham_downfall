# frozen_string_literal: true

class WeaknessesSerializer
  class << self
    def new(weakness)
      {
        "data": {
          "name": weakness.name
          "traits": weakness.traits
          "image": weakness.imagesrc
        }
      }
  end
end
