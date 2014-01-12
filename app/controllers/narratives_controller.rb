class NarrativesController < ApplicationController

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

  end

  def create
    @narrative = Narrative.create(params[:narrative])
    redirect_to feedbacks_path
  end

  def show
    @narrative = Narrative.find(params[:id])
    @narrativeFeedbacks = Feedback.find_all_by_narrative_id(params[:id])
    render :json => @narrativeFeedbacks
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

end
