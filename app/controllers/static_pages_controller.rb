include SignInsHelper
class StaticPagesController < ApplicationController

  	def default
  		if ! logged_in? then
  			redirect_to signin_path
  		end
  	end
end
