# The conroller class for the admin
# Any actions for the +Admin+ user will be handled here
class AdminsController < ApplicationController
    # Sets the admin instance variable
    before_action :set_admin

    # This corresponds to /admin/:id where :id is the admin id
    # This route is where most admin actions will be handled
    # Such actions include: verifying educators, approving DMCA takedowns
    def show
        @educators = Educator.where(verified: [false, nil]).all
        @dmcas = Dmca.all
    end

    private
    # This method will set the admin for this controller
    # This will set it to the current_admin
    def set_admin
        @admin = current_admin
    end
end
