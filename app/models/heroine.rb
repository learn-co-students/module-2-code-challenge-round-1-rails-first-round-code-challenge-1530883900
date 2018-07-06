class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, uniqueness:true, presence:true
  validates :super_name, uniqueness:true, presence:true
  #has_one :power

  def self.search(search_term)
    Heroine.all.select do |heroine|
      heroine.power.name.downcase == search_term.downcase
    end
  end
end
