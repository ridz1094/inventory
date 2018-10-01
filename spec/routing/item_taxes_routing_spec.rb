require "rails_helper"

RSpec.describe ItemTaxesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/item_taxes").to route_to("item_taxes#index")
    end

    it "routes to #new" do
      expect(:get => "/item_taxes/new").to route_to("item_taxes#new")
    end

    it "routes to #show" do
      expect(:get => "/item_taxes/1").to route_to("item_taxes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_taxes/1/edit").to route_to("item_taxes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/item_taxes").to route_to("item_taxes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_taxes/1").to route_to("item_taxes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_taxes/1").to route_to("item_taxes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_taxes/1").to route_to("item_taxes#destroy", :id => "1")
    end
  end
end
