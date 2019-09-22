require "rails_helper"

RSpec.describe WorkoutDaysController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/workout_days").to route_to("workout_days#index")
    end

    it "routes to #new" do
      expect(:get => "/workout_days/new").to route_to("workout_days#new")
    end

    it "routes to #show" do
      expect(:get => "/workout_days/1").to route_to("workout_days#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workout_days/1/edit").to route_to("workout_days#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/workout_days").to route_to("workout_days#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workout_days/1").to route_to("workout_days#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workout_days/1").to route_to("workout_days#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workout_days/1").to route_to("workout_days#destroy", :id => "1")
    end
  end
end
