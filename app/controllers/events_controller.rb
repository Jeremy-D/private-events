class EventsController < ApplicationController
	def index
	end

	def new
	end

	def create
	
	end

	private 
		def event_params
			params.require(:event).permit(:title,:date,:location)
		end
end