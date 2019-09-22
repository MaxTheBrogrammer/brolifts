require "rails_helper"

RSpec.describe PersonalRecordsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/personal_records").to route_to("personal_records#index")
    end

    it "routes to #new" do
      expect(:get => "/personal_records/new").to route_to("personal_records#new")
    end

    it "routes to #show" do
      expect(:get => "/personal_records/1").to route_to("personal_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personal_records/1/edit").to route_to("personal_records#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/personal_records").to route_to("personal_records#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/personal_records/1").to route_to("personal_records#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/personal_records/1").to route_to("personal_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personal_records/1").to route_to("personal_records#destroy", :id => "1")
    end
  end
end
