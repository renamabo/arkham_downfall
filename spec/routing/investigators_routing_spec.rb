require "rails_helper"

RSpec.describe InvestigatorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigators").to route_to("investigators#index")
    end

    it "routes to #new" do
      expect(get: "/investigators/new").to route_to("investigators#new")
    end

    it "routes to #show" do
      expect(get: "/investigators/1").to route_to("investigators#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigators/1/edit").to route_to("investigators#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigators").to route_to("investigators#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigators/1").to route_to("investigators#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigators/1").to route_to("investigators#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigators/1").to route_to("investigators#destroy", id: "1")
    end
  end
end
