class BrandsController < ApplicationController

	def index
		@brands = Brand.all

      if params[:search]
        @brands = Brand.search(params[:search]).order("created_at DESC")
      else
        @brands = Brand.all.order("created_at DESC")
      end
	end

	def new
		@brand = Brand.new
	end


	def create
    @brand = Brand.new(brand_params)
 
    respond_to do |format|
      if @brand.save
        # Tell the UserMailer to send a welcome email after save
        NotificationMailer.welcome_email(@brand).deliver_later
 
        format.html { redirect_to(@brand, notice: 'User was successfully created.') }
        format.json { render json: @brand, status: :created, location: @brand }
      else
        format.html { render action: 'new' }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

	def show
		@brand = Brand.find(params[:id])
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def update
		@brand = Brand.find(params[:id])

		if @brand.update(brand_params)
			redirect_to brands_url
		else
			render :edit
		end
	end

	def destroy
		@brand = Brand.find(params[:id])

		@brand.destroy
		redirect_to brands_path
	end

	private
		def brand_params
			params.require(:brand).permit(:name, :logo)
		end
end