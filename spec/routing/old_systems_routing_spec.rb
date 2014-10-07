require "rails_helper"

RSpec.describe OldSystemsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/old_systems").to route_to("old_systems#index")
    end

    it "routes to #new" do
      expect(:get => "/old_systems/new").to route_to("old_systems#new")
    end

    it "routes to #show" do
      expect(:get => "/old_systems/1").to route_to("old_systems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/old_systems/1/edit").to route_to("old_systems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/old_systems").to route_to("old_systems#create")
    end

    it "routes to #update" do
      expect(:put => "/old_systems/1").to route_to("old_systems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/old_systems/1").to route_to("old_systems#destroy", :id => "1")
    end

  end
end
