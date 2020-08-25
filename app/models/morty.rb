class Morty < ApplicationRecord
  belongs_to :seller_rick, class_name: 'Rick', foreign_key: 'rick_id'
  has_one :exchange
  has_one :buyer_rick, through: :exchange, source: :rick
  has_one_attached :photo
  validates :title, uniqueness: true
end
