class Room < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
    do_not_validate_attachment_file_type :picture
    # validations
    validates_presence_of :charge, :room_name
end
