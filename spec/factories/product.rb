require 'rails_helper'

FactoryBot.define do
   factory :product do
   name {"Big Hat"}
   cost {12.01}
   country_of_origin {"USA"}
   end
end
