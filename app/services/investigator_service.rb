class InvestigatorService
    class << self
        
        def get_investigator(name)
            response = BaseService.conn("https://arkhamdb.com/").get("/api/public/cards/")
        end
        def get_investigators
            response = BaseService.conn("https://arkhamdb.com/").get("/api/public/cards/")
            BaseService.parse_json(response)
        end
    end
end