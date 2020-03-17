# frozen_string_literal: true

# Registration controller for the +Admin+ user
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
