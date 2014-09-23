class HomeController < ApplicationController

	def start
		respond_to do | format |
			format.html { render :layout => 'application' }
		end
	end

	def template
		respond_to do | format |
			format.html { render partial: 'angular/' + params[:partial] }
		end
	end
end
