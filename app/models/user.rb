class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  validates :first_name, uniqueness: { scope: :last_name }
  validates :phonenumber, format: { with: /\^(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
