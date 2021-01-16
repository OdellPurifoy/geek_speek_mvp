require "rails_helper"

RSpec.describe SpeeksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/speeks").to route_to("speeks#index")
    end

    it "routes to #new" do
      expect(get: "/speeks/new").to route_to("speeks#new")
    end

    it "routes to #show" do
      expect(get: "/speeks/1").to route_to("speeks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/speeks/1/edit").to route_to("speeks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/speeks").to route_to("speeks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/speeks/1").to route_to("speeks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/speeks/1").to route_to("speeks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/speeks/1").to route_to("speeks#destroy", id: "1")
    end
  end
end
