require 'spec_helper'

describe LocationsController do
  let(:location) { FactoryGirl.create(:location) }
  let(:system) { FactoryGirl.create(:system, location_id: location.id) }

  context "GET #show" do
    it "should find a location by id" do
      get :show, id: location.id, format: :json
      expect(assigns(:loc)).to eq(location)
    end

    it "should find a location's system" do
      get :show, id: location.id
      expect(assigns(:system)).to eq(location.system)
    end

    it "should build a location hash" do
      get :show, id: location.id
      expect(assigns(:location)).to eq({location: location, system: location.system})
    end

    it "should render json" do
      get :show, id: location.id
      response.body.should == {location: location, system: location.system}.to_json
    end
  end
end