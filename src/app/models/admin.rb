# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: admin.rb
# Description: A model to encompass the Admin table in postgres
# Last date modified: 3/26/2020

# This is the Admin model
# The schema (at least relevant attributes) is:
#   email: string
#   encrypted_password: string
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
