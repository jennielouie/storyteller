class ImagesController < ApplicationController

#Render JSON to show all narratives for each image
def index
    @images=Image.all
    arr=[]
    @images.each do |img|
      @image_narratives=Narrative.find_all_by_image_id(img.id)
      @image_narratives.each do |imgnar|
        record={}
        record[:image_id]=img.id
        record[:narrative_id]=imgnar.id
        record[:title]=imgnar.title
        record[:name]=Writer.find(imgnar.writer_id).name
        record[:image_url]=img.url
        arr << record
      end
    end
    # Creates json summarizing all narrative titles and their authors
    respond_to do |format|
      format.html
      format.json { render :json => arr }
    end

end

#Render JSON to show all narratives for a specific image
  def show
    @image=Image.find(params[:id])
    @image_narratives=Narrative.find_all_by_image_id(params[:id])
    @imageURL=Image.find(params[:id]).url
    @narr4image=[]

    @image_narratives.each do |narr|
      arr={}
      arr[:narrative_id]=narr.id
      arr[:image_id]=narr.image_id
      arr[:title]=narr.title
      arr[:story]=narr.story
      arr[:name]=Writer.find(narr.writer_id).name
      arr[:writer_id]=narr.writer_id
      arr[:image_url]=Image.find(narr.image_id).url
      @narr4image << arr
    end

    respond_to do |format|
      format.html
      format.json { render :json => @narr4image }
    end

  end

end

