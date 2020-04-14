class StaticController < ApplicationController
    before_action :verify_login, only: :dashboard

    def dashboard

    end

end