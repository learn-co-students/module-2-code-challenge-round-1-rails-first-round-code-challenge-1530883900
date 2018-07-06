class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true

  # def self.search(search)
  #   strnegth_id = Strnegth.find_by(name: search)
  #   self.where("s") WHOO KNOWWS
  # end

  
end
