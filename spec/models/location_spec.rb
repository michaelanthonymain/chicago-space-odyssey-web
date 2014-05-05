require 'spec_helper'

describe Location do
  #Migration Tests
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:beacon_id).of_type(:string) }
  it { should have_db_column(:latitude).of_type(:float) }
  it { should have_db_column(:longitude).of_type(:float) }
  it { should have_db_column(:url).of_type(:string) }

  #Association Tests
  it { should have_one(:system) }
  it { should have_many(:visits) }
  it { should have_many(:collections) }
end
