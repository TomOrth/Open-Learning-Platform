# frozen_string_literal: true

# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: lesson_plans_controller.rb
# Description: A controller for the registration of educators
# Last date modified: 3/26/2020

# Registration controller for the +Educators+ user
# This is used by devise internally
# This will allow for other parameters to be used during registration
class Educators::RegistrationsController < Devise::RegistrationsController
  # The params that can be passed during registration
  # @return [Hash] A params hash with the allowed parameters
  def sign_up_params
    p = params.require(:educator).permit(*([:first_name, :last_name, :email, :password, :password_confirmation].compact))
    p
  end
end
