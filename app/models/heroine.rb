class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness: {message: "Heroine super name must be unique"}
  validates :power_id, presence: true
end
