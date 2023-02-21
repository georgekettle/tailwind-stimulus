class Photo < ApplicationRecord
  has_many :pins, dependent: :destroy
end
