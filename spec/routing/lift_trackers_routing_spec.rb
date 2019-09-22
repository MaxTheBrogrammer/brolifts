require "rails_helper"

RSpec.describe LiftTrackersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/lift_trackers").to route_to("lift_trackers#index")
    end

    it "routes to #new" do
      expect(:get => "/lift_trackers/new").to route_to("lift_trackers#new")
    end

    it "routes to #show" do
      expect(:get => "/lift_trackers/1").to route_to("lift_trackers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lift_trackers/1/edit").to route_to("lift_trackers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lift_trackers").to route_to("lift_trackers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lift_trackers/1").to route_to("lift_trackers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lift_trackers/1").to route_to("lift_trackers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lift_trackers/1").to route_to("lift_trackers#destroy", :id => "1")
    end
  end
end
