require 'spec_helper'

FactoryGirl.define do

  factory :user do
    name "Test User"
  end

  factory :system do
    name "Test System"
    description "This is definitely a system. For sure."
    location_id 2
    distance 4
  end


end