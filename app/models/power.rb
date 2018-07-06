class Power < ApplicationRecord
  has_many :heroines, dependent: :delete_all
end
