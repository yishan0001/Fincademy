class StaticPagesController < ApplicationController
	def home
		render :layout => "home_layout"
	end

	def equity_track
		render :layout => "equity_track_layout"
	end
end