# frozen_string_literal: true

# :nodoc:
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable # , :confirmable
  has_many :products
  validates :username, presence: true, uniqueness: true
end
