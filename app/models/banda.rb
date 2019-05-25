class Banda < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :nome, length: { in: 1..40 }
  validates :ano, numericality: { only_integer: true, greater_than: 1877, less_than: 2020 }
  validates :genero, inclusion: { in: ['Hardcore', 'Progressivo', 'Punk', 'Heavy Metal'], message: "%{value} não é um gênero válido" }
end
