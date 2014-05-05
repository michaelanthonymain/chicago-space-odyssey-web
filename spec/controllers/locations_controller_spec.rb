require 'spec_helper'

describe LocationsController do
  let(:location) { FactoryGirl.create(:location) }
  let(:system) { FactoryGirl.create(:system, location_id: location.id) }

  context "GET #system" do
    it "should find a location by id" do
      get :system, id: location.id, format: :json
      expect(assigns(:loc)).to eq(location)
    end

    it "should find a location's system" do
      get :system, id: location.id
      expect(assigns(:system)).to eq(location.system)
    end

    it "should build a location hash" do
      get :system, id: location.id
      expect(assigns(:location)).to eq({location: location, system: location.system})
    end

    it "should render json" do
      get :system, id: location.id
      response.body.should == {location: location, system: location.system}.to_json
    end
  end

  context "GET #collections" do
    it "should find a location by id" do
      get :collections, id: location.id, format: :json
      expect(assigns(:loc)).to eq(location)
    end

    it "should find collection by location" do
      get :collections, id: location.id, format: :json
      expect(assigns(:colls)).to eq(location.collections)
    end

    it "should render json" do
      get :collections, id: location.id, format: :json
      response.body.should == location.collections.to_json
    end
  end
end