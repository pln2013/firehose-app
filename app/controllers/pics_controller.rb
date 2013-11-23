class PicsController < ApplicationController

	def create
		# Pic.create(:lesson => 1,...)
		@pic = Pic.create( pic_params )

		redirect_to pics_path
	end

	def new
		@pic = Pic.new
	end

	def index
		@pics = Pic.all
	end

	private

	def pic_params
		params.require(:pic).permit(:lesson, :emotion, :learned)
	end

end
