require 'spec_helper'

describe Collection do
  #Migration Tests
  it { should have_db_column(:text).of_type(:text) }
  it { should have_db_column(:location_id).of_type(:integer) }
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:image).of_type(:text) }

  #Association Tests
  it { should belong_to(:user) }
  it { should belong_to(:location) }
end
