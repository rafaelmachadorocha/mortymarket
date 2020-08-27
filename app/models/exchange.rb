class Exchange < ApplicationRecord
  belongs_to :rick
  belongs_to :morty

  validates :payment, inclusion: { in: %w(Blemflarck Flurbo Crystal)  }
end
