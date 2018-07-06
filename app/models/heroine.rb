class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, uniqueness: true

  def self.search(search)
    Heroine.select do |heroine|
      heroine.power.name == search
    end
  end
end
