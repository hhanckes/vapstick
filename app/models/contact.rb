class Contact < ActiveRecord::Base
  validates :name, :email, :phone_number, :content, presence: true
end
