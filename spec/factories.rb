require 'spec_helper'

FactoryGirl.define do

  factory :system do
    name "Test System"
    description "This is definitely a system. For sure."
    location_id 2
    distance 4
  end


end