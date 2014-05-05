require 'spec_helper'

describe SystemsController do

    describe "GET #show" do
      let(:system) {FactoryGirl.create(:system)}

      it "should assign @system by id" do
          xhr :get, :show, format: :js, id: system.id
          expect(assigns(:system)).to eq(system)
      end
    end

    describe "GET #all" do
        let!(:location) { FactoryGirl.create(:location) }
        let!(:system) { FactoryGirl.create(:system, location_id: location.id) }

    it "should assign @systems to each location's system" do
        get :all
        expect(assigns(:systems)).to eq( {location.id => location.system} )
    end

    it "should render json" do
        get :all
            response.body.should == {location.id => location.system}.to_json
        end
    end
end