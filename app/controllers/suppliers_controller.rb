class SuppliersController < ApplicationController
	def create
    supplier = Supplier.new(permit)
    if supplier.valid? 
      supplier.save
      render json: supplier
    else
      render json: supplier.errors
    end
  end 

  def update
    if Supplier.exist?(params[:id])
      a = Supplier.find(params[:id])
      a = Supplier.update
      render json: Valid
    else
      render json: {"mensaje" => "No se actualizo"}
    end
  end

  def index
    if Supplier.all
      supplier = Supplier.all
      render json: supplier
    else
      render json: {"Mensaje" => "No tiene aun proveedores en su lista"}
    end
  end

  #def delete
   # if Supplier.exist?(paramas[:id])

  #end
  private
  
  def permit
    params.permit(:name, :alias, :rif, :fiscal_address, :comercial_address, :phone, :email)
  end
end
