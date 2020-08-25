class Rick < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sold_morties, class_name: 'Morty', foreign_key: 'rick_id'
  has_many :exchanges
  has_many :bought_morties, through: :exchanges, source: :morty
  has_one_attached :photo
end
