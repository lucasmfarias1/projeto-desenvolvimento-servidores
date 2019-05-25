class User < ApplicationRecord
  has_many :banda_ratings
  has_many :album_ratings
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_admin?
    permission_level == 1
  end
end
