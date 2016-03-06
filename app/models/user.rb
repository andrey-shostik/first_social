class User < ActiveRecord::Base
  has_secure_password
  has_secure_token
  has_many :walls

  validates :email, presence: :true, uniqueness: :true
  validates :first_name, :last_name, presence: :true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def name
    "#{first_name} #{last_name}"
  end
end
