require "spec_helper"

describe BolsistaosController do
  describe "routing" do

    it "routes to #index" do
      get("/bolsistaos").should route_to("bolsistaos#index")
    end

    it "routes to #new" do
      get("/bolsistaos/new").should route_to("bolsistaos#new")
    end

    it "routes to #show" do
      get("/bolsistaos/1").should route_to("bolsistaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bolsistaos/1/edit").should route_to("bolsistaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bolsistaos").should route_to("bolsistaos#create")
    end

    it "routes to #update" do
      put("/bolsistaos/1").should route_to("bolsistaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bolsistaos/1").should route_to("bolsistaos#destroy", :id => "1")
    end

  end
end
