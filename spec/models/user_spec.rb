require 'spec_helper'

describe User do
  #Migration Tests
  it { should have_db_column(:provider).of_type(:string) }
  it { should have_db_column(:uid).of_type(:integer) }
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:username).of_type(:string) }
  it { should have_db_column(:image_string).of_type(:string) }
  it { should have_db_column(:location).of_type(:string) }
  it { should have_db_column(:token).of_type(:string) }
  it { should have_db_column(:secret).of_type(:string) }

  #Association Tests
  it { should have_many(:collections) }
  it { should have_many(:visits) }
  it { should have_many(:locations).through(:visits) }

end
