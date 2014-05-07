require 'spec_helper'

describe UsersController do
  let(:user) { FactoryGirl.create(:user) }

  context "#index" do
    it "should respond with 200 OK" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  context "#show" do
    it "should respond with 200 OK" do
      get :show
      expect(response.status).to eq(200)
    end
  end

  context "#mobile" do
      let(:location) { FactoryGirl.create(:location) }

      it "should find the user by params uid" do
        post :mobile, {user_id: user.uid, location_id: location.id}
        expect(assigns(:user)).to eq(user)
      end

      it "should create a user if none already exists" do
        expect {
        post :mobile, {user_id: 14, location_id: location.id}
        }.to change{ User.count }.by(1)
      end

      it "should add a new location to the user's locations" do
        locations = user.locations
        expect {
          post :mobile, {user_id: user.uid, location_id: location.id }
        }.to change{ locations.count }.by(1)
      end
  end

end