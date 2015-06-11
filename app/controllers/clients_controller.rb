class ClientsController < ApplicationController
  def index
  	@clients = Client.all
  end

  def clients_off
  	@clients = Client.all
  end
   def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(permit_params)

  	if @client.save
  		if @client.active == 'Deshabilitado'
  			 redirect_to clients_off_path, :notice => "Registro exitoso!"
  			else
  			 redirect_to new_client_path, :notice => "Registro exitoso!"
  		end

  		else
  		render 'new'
  	end
  end

  	def edit
  		@client = Client.find(params[:id])
  	end

  	def update
  		@client = Client.find(params[:id])  

  		if @client.update(permit_params)
  			if @client.active == 'Deshabilitado'
  				 redirect_to clients_off_path
  			else
  			 	redirect_to clients_path
  			end

  		else
  			render 'edit'
  		end		
  	end


  def destroy
  	@client = Client.find(params[:id])
  	@client.active = 'Deshabilitado'
  	if @client.save
  		redirect_to clients_off_path
	else
  		render 'delete'
  	end
  end
  def permit_params
  	params.require(:client).permit(:name, :alias, :rif_ci, :fiscal_address, :comercial_address, :phone, :email, :type_client, :active)
  end
end
