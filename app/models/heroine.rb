class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, uniqueness:true
  #has_one :power
end
