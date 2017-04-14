class CitiesController < ApplicationController

	def index
		@cities = if params[:search]
  		City.search(params[:search]).order("created_at DESC")
		else
  		City.all.order("created_at DESC")
	  end
	end

	def new
		@city  = City.new
	end

	def show
		@city = City.find(params[:id])
	end

	def edit
		@city = City.find(params[:id])
	end

	def create
		@city = City.new(city_params)

		if @city.save
			redirect_to @city
		else
			render 'new'
		end
	end

	def update
		@city = City.find(params[:id])
 
		if @city.update(city_params)
  		redirect_to @city
		else
  		render 'edit'
		end
	end

	def destroy
		@city = City.find(params[:id])

		@city.destroy
		redirect_to cities_path
	end


	private

	def city_params
		params.require(:city).permit(:name, :latitude, :longitude)
	end
	
end
