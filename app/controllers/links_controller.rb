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
		# @link = Link.new
		# @link.save

		# flash.notice = "Link has been submitted"
		# redirect_to link_path(@link)

		@link = Link.new(params[:link])

    respond_to do |format|
    	if @link.save
    		format.html { redirect_to @link, notice: 'Story was successfully created.'}
    		format.json { render json: @link, status: :created, location: @link }
    	else
    		format.html { render action: "new"}
    		format.json { render json: @link.errors, status: :unprocessable_entity}
    	end
    end
	end
end