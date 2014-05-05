require 'spec_helper'

describe ApplicationController do

  context "#current_user" do
    it "should find user by session user_id" do
        {:user_id => 4}
    end
  end

end