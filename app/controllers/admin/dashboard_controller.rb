class Admin::DashboardController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "admin12345678"

    def index
        @calculations = Calculation.order(created_at: :desc).page(params[:page]).per(15)
    end

    
end
