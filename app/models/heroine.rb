class Heroine < ApplicationRecord
  belongs_to :powers

  validates :super_name, { presence: true, uniqueness: true }
end
