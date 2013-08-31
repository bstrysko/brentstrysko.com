class ImagesController < ApplicationController
	before_action :set_image, only: [:show, :destroy]
	before_filter :authenticate_user!, except: [:show]

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    Rails.logger.info "#{@image.id}"
    Rails.logger.info "#{@image._id}"

    respond_to do |format|
      if @image.save
        format.html { redirect_to "/images/#{@image.id}", notice: 'Image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @image }
      else
        format.html { render action: 'new' }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    begin
      gridfs_path = @image.image.to_s.gsub("/image/", "")
      gridfs_file = Mongoid::GridFS[gridfs_path]
      self.response_body = gridfs_file.data
      self.content_type = gridfs_file.content_type
    rescue
      self.status = :file_not_found
      self.content_type = 'text/plain'
      self.response_body = 'Image not found'
    end
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end

  private
  	def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params[:image].permit(:image)
    end
end
