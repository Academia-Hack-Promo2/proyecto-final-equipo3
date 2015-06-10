class HomeController < ApplicationController
before_action :authenticate_user!
  def views
  	render "index.html.erb"
  end
end
