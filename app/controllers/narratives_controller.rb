class NarrativesController < ApplicationController
before_filter :authorize

  def index
    @narratives = Narrative.all
    @narrative = Narrative.new
    @narratives.each do |n|

    n[:name]=n.writer.name

    end
    # Creates json summarizing all narrative titles and their authors
    # render :json => @narratives
  end

  def new
    @narrative = Narrative.new
    @imageURL=Image.find(params[:imgID]).url
    @imageID = params[:imgID]


  end

  def create
   new_narrative = Narrative.create(params[:narrative])
   redirect_to image_path(new_narrative.image_id)

  end

  def show
    @narrative = Narrative.find(params[:id])
  end


  def edit
    @narrative = Narrative.find(params[:id])
  end

  def update
    revised_narrative = Narrative.find(params[:id])
    revised_narrative.update_attributes(params[:narrative])
    redirect_to narratives_path
  end

  def destroy
    Narrative.delete(params[:id])
    redirect_to narratives_path
  end

  private

  def authorize
    if !current_user
      flash[:alert] = "Sorry you must be signed in to create or revise stories."
      redirect_to root_url
    end
  end

end
