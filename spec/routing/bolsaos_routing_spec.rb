require "spec_helper"

describe BolsaosController do
  describe "routing" do

    it "routes to #index" do
      get("/bolsaos").should route_to("bolsaos#index")
    end

    it "routes to #new" do
      get("/bolsaos/new").should route_to("bolsaos#new")
    end

    it "routes to #show" do
      get("/bolsaos/1").should route_to("bolsaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bolsaos/1/edit").should route_to("bolsaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bolsaos").should route_to("bolsaos#create")
    end

    it "routes to #update" do
      put("/bolsaos/1").should route_to("bolsaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bolsaos/1").should route_to("bolsaos#destroy", :id => "1")
    end

  end
end
