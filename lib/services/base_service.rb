# frozen_string_literal: true

class BaseService
  class << self
    def parse_json(response)
      JSON.parse(response.body)
    end

    def conn(url)
      Faraday.new(url)
    end
  end
end
