class Building < ActiveRecord::Base
 has_many :apartments
 has_many :apartment_users, through: :apartments
 has_many :users, through: :apartment_users
end
