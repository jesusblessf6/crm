class UsersController < ApplicationController
  	def new
  		@user = User.new
  	end

  	def create
  		@user = User.new(params[:user])

  		if(@user.save) then
  			session[:user_id] = @user.id
  			redirect_to root_path
  		end 
  	end

  	def index
  	end
end
