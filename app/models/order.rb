class Order < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates_presence_of :first_name
end
