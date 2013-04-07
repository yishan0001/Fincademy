class StaticPagesController < ApplicationController
	def home
		render :layout => "home_layout"
	end

	def equity_track
		render :layout => "equity_track_layout"
	end

	def tracks
		render :layout => "tracks_layout"
	end
end