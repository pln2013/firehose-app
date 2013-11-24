class PicsController < ApplicationController
	def update
		@pic = Pic.find(params[:id])
		@pic.update_attributes( pic_params)
		
		if @pic.valid? 
			redirect_to pics_path
		else
		render :edit, :status => :unprocessable_entity	
		end

	end
	def edit
		@pic = Pic.find(params[:id])
	end
	
	def destroy
		Pic.destroy(params[:id])
		redirect_to pics_path
	end	
	def show
		@pic = Pic.find(params[:id])
	end

	def create
		# Pic.create(:lesson => 1,...)
		@pic = Pic.create( pic_params )
		
		if @pic.valid? 
		redirect_to pics_path
		else
		render :new, :status => :unprocessable_entity	
		end
	end

	def new
		@pic = Pic.new
	end

	def index
		@pics = Pic.all
	end

	private

	def pic_params
		params.require(:pic).permit(:lesson, :emotion, :learned, :image)
	end

end
