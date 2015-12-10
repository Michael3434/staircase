class Apartment < ActiveRecord::Base
  belongs_to :user
  belongs_to :building, foreign_key: :building_id, class_name: 'Building'

end
