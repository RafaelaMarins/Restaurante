require "spec_helper"

describe EntregasController do
  describe "routing" do

    it "routes to #index" do
      get("/entregas").should route_to("entregas#index")
    end

    it "routes to #new" do
      get("/entregas/new").should route_to("entregas#new")
    end

    it "routes to #show" do
      get("/entregas/1").should route_to("entregas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/entregas/1/edit").should route_to("entregas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/entregas").should route_to("entregas#create")
    end

    it "routes to #update" do
      put("/entregas/1").should route_to("entregas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/entregas/1").should route_to("entregas#destroy", :id => "1")
    end

  end
end
