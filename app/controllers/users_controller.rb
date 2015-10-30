class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
		if user.persisted?
		puts user
		redirect_to user_path(user)
		else 
			flash[:notice] = "User not created."
		redirect_to new_user_path
		end
	end

	def show
		puts "Calling users#show with #{params[:id]}"
		@user = User.find(params[:id])
	end

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
	end

end
