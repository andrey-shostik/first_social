class User < ActiveRecord::Base
  has_secure_password
  has_secure_token
  has_many :walls

  validates :email, presence: :true, uniqueness: :true
  validates :first_name, :last_name, presence: :true
  def name
    "#{first_name} #{last_name}"
  end
end
