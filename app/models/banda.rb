class Banda < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :albums, dependent: :destroy

  validates :nome, length: { in: 1..40 }
  validates :ano, numericality: { only_integer: true, greater_than: 1877, less_than: 2020 }
  validates :genero, inclusion: { in: ['Hardcore', 'Progressivo', 'Punk', 'Heavy Metal'], message: "%{value} não é um gênero válido" }
  validates :image, presence: true

  def calc_nota
    all_ratings = BandaRating.where(banda: self)

    soma_notas = 0
    qtd_notas = all_ratings.length

    all_ratings.each do |rating|
      soma_notas += rating.nota
    end

    media = soma_notas / qtd_notas

    self.nota = media
    self.save
  end
end
