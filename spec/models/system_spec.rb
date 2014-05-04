require 'spec_helper'

describe System do
  #Migration Tests
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:description).of_type(:text) }
  it { should have_db_column(:url).of_type(:string) }
  it { should have_db_column(:image_path).of_type(:string) }
  it { should have_db_column(:location_id).of_type(:integer) }
  it { should have_db_column(:distance).of_type(:integer) }

  #Association Tests
  it { should belong_to(:location) }
end
