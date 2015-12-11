class Apartment < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :building, foreign_key: :building_id, class_name: 'Building'


  has_many :apartment_users, dependent: :destroy
  has_many :users

end
