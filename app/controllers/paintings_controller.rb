class PaintingsController < ApplicationController

	def new
		@painting = Painting.new
	end

	def create
		@painting = Painting.new(painting_params)
		if @painting.save
			redirect '/'
		else
			render 'new'
		end
	end


	private 

	def painting_params
		params.require(:painting).permit(:name,:description,:url)
	end

end
