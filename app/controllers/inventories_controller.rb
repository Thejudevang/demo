class InventoriesController < ApplicationController

	def index
		@inventories = Inventory.all
	end


	def new
		@product   = Product.find(params[:product_id])
		@inventory = Inventory.new
	end

	def create
		@product = Product.find(params[:product_id])
		@inventory = @product.inventories.new(inventory_params)


		if @inventory.save
			redirect_to inventories_url
		else
			render :new
		end
	end

	def show
		#@product = Product.find(params[:product_id])
		@inventory = Inventory.find(params[:id])
	end

	def edit
		@inventory = Inventory.find(params[:id])
	end

	def update
		@inventory = Inventory.find(params[:id])
		if @inventory.update(inventory_params)
			redirect_to inventory_url
		else
			render :edit
		end
	end

	def destroy
		@inventory = Inventory.find(params[:id])
		@inventory.destroy
		redirect_to inventories_url
	end

	private

	def inventory_params
		params.require(:inventory).permit(:bprice, :sprice, :offer, :sku, :store_id, :store_location_id, :product_id)	

	end
end