class Board < ApplicationRecord
  has_many :pins, dependent: :destroy
  has_many :photos, through: :pins
end
