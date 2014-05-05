require 'spec_helper'

describe SystemsController do

    describe "GET #show" do
      let(:system) {FactoryGirl.create(:system)}

      it "should assign @system by id" do
          xhr :get, :show, format: :js, id: system.id
          expect(assigns(:system)).to eq(system)
      end
    end
end