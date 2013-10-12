class LinksController < ApplicationController
	
	respond_to :html, :xml, :js

	def index
		@links = Link.all
	end

	def show
		@link = Link.find(params[:id])

		respond_with @link
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:id])
		@link.save

		flash.notice = "Link has been submitted"
		redirect_to link_path(@link)
	end
end