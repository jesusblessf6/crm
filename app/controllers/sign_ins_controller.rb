#coding: utf-8  

class SignInsController < ApplicationController
  	def new
  	end

  	def create
  		username = params[:sign_ins][:username]
  		password = params[:sign_ins][:password]
  		user = User.find_by_login_name(username)
  		if user && user.authenticate(password) then
  			session[:user_id] = user.id
  			redirect_to default_path
  		else
  			flash.now[:error] = '用户名或密码错误'
  			render 'new'
  		end 
  	end

  	def destroy
  	end
end
