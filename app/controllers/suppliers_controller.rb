class SuppliersController < ApplicationController
	  
  def index
    @supplier = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(permit_params)
    if @supplier.save
      render supplier_new_path
    else
      render 'new'
    end
  end 

  private
  
  def permit_params
    params.require(:supplier).permit(:name, :alias, :rif, :fiscal_address, :comercial_address, :phone, :email, :active)
  end
end
