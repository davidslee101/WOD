class WodsController < ApplicationController
	def index
		@wod = Wod.order("RANDOM()").first
	end

	def new
		@wod = Wod.new
	end

	def create
		Wod.create(wod_params)
		redirect_to root_path
	end

	private

	def wod_params
		params.require(:wod).permit(:workout)
	end
end
