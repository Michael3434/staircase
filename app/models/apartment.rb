class Apartment < ActiveRecord::Base
  belongs_to :user
  belongs_to :building
end
