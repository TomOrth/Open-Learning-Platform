# frozen_string_literal: true

class Educators::RegistrationsController < Devise::RegistrationsController
  # The endpoint to redirect to after signing up
  # @param resource [Educator] Instance of the +Educator+ model
  # @return [String] The new endpoint to be redirected to  
  def after_sign_up_path_for(resource)
    root_path
  end

  # The endpoint to redirect to after updating
  # @param resource [Educator] Instance of the +Educator+ model
  # @return [String] The new endpoint to be redirected to  
  def after_update_path_for(resource)
    root_path
  end
  
  # The params that can be passed during login
  # @return [Hash] A params hash with the allowed parameters
  def sign_up_params
    p = params.require(:educator).permit(*([:first_name, :last_name, :email, :password, :password_confirmation].compact))
    p
  end
end
