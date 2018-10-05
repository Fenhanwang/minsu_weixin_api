class Order < ApplicationRecord
  belongs_to :room
  belongs_to :user, optional: true

  validates_presence_of :first_name
end
