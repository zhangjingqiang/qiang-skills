class Contact < ActiveRecord::Base
  validates :name, presence:true, length: { maximum: 100 }
  validates :email, presence:true, length: { maximum: 100 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :subject, presence:true, length: { maximum: 100 }
  validates :message, presence:true, length: { maximum: 1000 }

  default_scope order('id DESC')
end
