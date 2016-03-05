class Wall < ActiveRecord::Base
  belongs_to :user
  delegate :name, to: :user

  validates :text, presence: :true
end
