class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, {presence: true, uniqueness: true}

  def self.search(arg)
   Heroine.all.select do |value|
     value.power.name.downcase == arg.downcase
   end
 end

end
