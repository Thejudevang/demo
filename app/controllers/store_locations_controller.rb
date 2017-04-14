class StoreLocationsController < ApplicationController

	def index
		@store_locations = StoreLocation.all
	end
	
	def new
		@store_location = StoreLocation.new
	end

	def create
		@store_location = StoreLocation.new(store_location_params)

		if @store_location.save
			redirect_to store_locations_url
		else
			render :new
		end
	end

	def edit
		@store_location = StoreLocation.find(params[:id])
	end

	def show
		@store_location = StoreLocation.find(params[:id])
	end

	def update
		@store_location = StoreLocation.find(params[:id])
		 
		 if @store_location.update(store_location_params)
		 	redirect_to store_locations_url
		 else
		 	render :edit
		 end 	
	end

	def destroy
		@store_location = StoreLocation.find(params[:id])
		@store_location.destroy
		redirect_to store_locations_path
	end

	private

	def store_location_params
		params.require(:store_location).permit(:name, :lat, :lng, :city_id, :logo)
	end
end