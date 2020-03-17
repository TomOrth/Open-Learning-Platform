# This is mdoel for the +Educator+ user
# Relevant schema:
#   first_name: string
#   last_name: string
#   encrypted_password: string
#   email: string
#   paperwork: ActiveStorage::Attached::One
class Educator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :paperwork
end
