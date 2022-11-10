class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  
  has_many :articles
  has_many :comments, through: :articles
  has_many :rates, through: :articles
end
