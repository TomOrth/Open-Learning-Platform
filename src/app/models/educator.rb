# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: educator.rb
# Description: A model for the educator table
# Last date modified: 3/26/2020

# This is mdoel for the +Educator+ user
# Relevant schema:
#   first_name: string
#   last_name: string
#   encrypted_password: string
#   email: string
#   paperwork: ActiveStorage::Attached::One
# Initially added by devise via a generator
# Paperwork related code and lesson plans were added by Thomas Orth
class Educator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :paperwork
  has_many :lesson_plans
end
