require "spec_helper"

describe CardapiosController do
  describe "routing" do

    it "routes to #index" do
      get("/cardapios").should route_to("cardapios#index")
    end

    it "routes to #new" do
      get("/cardapios/new").should route_to("cardapios#new")
    end

    it "routes to #show" do
      get("/cardapios/1").should route_to("cardapios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cardapios/1/edit").should route_to("cardapios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cardapios").should route_to("cardapios#create")
    end

    it "routes to #update" do
      put("/cardapios/1").should route_to("cardapios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cardapios/1").should route_to("cardapios#destroy", :id => "1")
    end

  end
end
