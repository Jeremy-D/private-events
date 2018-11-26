class SessionsController < ApplicationController

	def new
	end

	def create
		if User.find_by(name: params[:session][:name])
			@user = User.find_by(name: params[:session][:name])
			#create log_in funtion
			log_in @user 
			#redirect_back_or @user
			redirect_to root_url
		else
			message = "No such user"
			flash[:warning] = message
			redirect_to root_url
		end
	end

	def destroy
		log_out if logged_in?
		redirect_to root_url
	end
end
