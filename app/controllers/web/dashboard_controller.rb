module Web
  class DashboardController < ApplicationController
    def index
      @subscriptions = current_user.subscriptions if defined?(current_user)
    end
  end
end
