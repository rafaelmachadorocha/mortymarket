class Morty < ApplicationRecord
  belongs_to :rick
  has_one :exchange
end
