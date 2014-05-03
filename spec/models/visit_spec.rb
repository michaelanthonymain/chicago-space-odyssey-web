require 'spec_helper'

describe Visit do
  #Migration Tests
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:location_id).of_type(:integer) }

  #Association Tests
  it { should belong_to(:user) }
  it { should belong_to(:location) }

end
