class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable


  has_many :comments
  has_many :messages
  has_many :posts, dependent: :destroy
  has_many :apartment_users, dependent: :destroy
  has_many :apartments, through: :apartment_users
  belongs_to :apartment, dependent: :destroy

  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first

    if user
      return user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.first_name = auth.info.name
        user.provider = auth.provider
        user.uid      = auth.uid
        user.email    = auth.info.email
        user.image    = auth.info.image
        user.password = Devise.friendly_token[0,20]
      end
    end
  end

  def name
    [first_name, last_name].join(' ')
  end
end
