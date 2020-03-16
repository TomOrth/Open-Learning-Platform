class AdminsController < ApplicationController
    before_action :set_admin
    def show
        @educators = Educator.where(verified: false).all
    end

    private
    def set_admin
        @admin = current_admin
    end
end
