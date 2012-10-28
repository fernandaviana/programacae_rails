require "spec_helper"

describe SetorsController do
  describe "routing" do

    it "routes to #index" do
      get("/setors").should route_to("setors#index")
    end

    it "routes to #new" do
      get("/setors/new").should route_to("setors#new")
    end

    it "routes to #show" do
      get("/setors/1").should route_to("setors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/setors/1/edit").should route_to("setors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/setors").should route_to("setors#create")
    end

    it "routes to #update" do
      put("/setors/1").should route_to("setors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/setors/1").should route_to("setors#destroy", :id => "1")
    end

  end
end
