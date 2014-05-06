# require 'spec_helper'

FactoryGirl.define do

  factory :user do
    uid 12345
    name "Test User"

    after(:create) do |user|
      user.locations << FactoryGirl.create(:location)
    end
  end

  factory :system do
    name "Test System"
    description "This is definitely a system. For sure."
    location_id 2
    distance 4
  end

  factory :visit do
  end

  factory :location do
    system
    name "Test Location"
  end

  factory :collection do
    text "This is some collection shit, ya dig?"
  end


end