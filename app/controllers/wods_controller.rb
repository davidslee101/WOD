class WodsController < ApplicationController
	def index
		@wod = Wod.order("RANDCOM()").first
	end
end
