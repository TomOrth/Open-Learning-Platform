# frozen_string_literal: true

# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: sessions_controller.rb
# Description: A controller for the logging in of admins
# Last date modified: 3/26/2020

# Sessions controller for the +Educator+ user
# This is used by devise internally
# This was generated in order to allow the educators_controller to exist
# Commented code is left in place as a reference
class Educators::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
