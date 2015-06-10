class ClientsController < ApplicationController
  def index
  	@clients = Client.new
  end
end
