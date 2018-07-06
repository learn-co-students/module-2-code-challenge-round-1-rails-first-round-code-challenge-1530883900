class Heroine < ApplicationRecord
  belongs_to :power

  validates :name, presence: true
  validates :super_name, presence: true
  validates :super_name, uniqueness: true

  def self.find_by_power(search_term)
    Heroine.all.select {|h| h.power.name.downcase.include?(search_term.downcase)}
  end

end
