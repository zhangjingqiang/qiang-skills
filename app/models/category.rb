class Category < ActiveRecord::Base
  has_many :skills, dependent: :destroy

  validates :name, presence: true, length: { maximum: 200 }
  
  default_scope { order('name DESC') }
end
