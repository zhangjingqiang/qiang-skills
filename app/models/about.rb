class About < ActiveRecord::Base
  validates :title, presence:true, length: { maximum: 100 }
  validates :description, presence:true, length: { maximum: 1000 }
end
