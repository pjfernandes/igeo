class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :subjects
  has_many :points, through: :subjects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
