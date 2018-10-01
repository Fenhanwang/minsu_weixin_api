class User < ApplicationRecord
    has_many :orders, dependent: :destroy

    # validations
    validates_presence_of :first_name
end
