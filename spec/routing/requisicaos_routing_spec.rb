require "spec_helper"

describe RequisicaosController do
  describe "routing" do

    it "routes to #index" do
      get("/requisicaos").should route_to("requisicaos#index")
    end

    it "routes to #new" do
      get("/requisicaos/new").should route_to("requisicaos#new")
    end

    it "routes to #show" do
      get("/requisicaos/1").should route_to("requisicaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/requisicaos/1/edit").should route_to("requisicaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/requisicaos").should route_to("requisicaos#create")
    end

    it "routes to #update" do
      put("/requisicaos/1").should route_to("requisicaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/requisicaos/1").should route_to("requisicaos#destroy", :id => "1")
    end

  end
end
