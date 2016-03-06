class PagesController < ApplicationController
  skip_before_action :require_login, only: [:show]
  def show
    if params[:id].present?
      @page = Page.find(params[:id])
    else
      @page = Page.first
    end
  end

  def new
    @page = Page.new
  end

 
  def create
    @page = Page.new(page_params)
    

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end
  

  def update
    @page = Page.find(params[:id])
    @page.name = params[:page][:content][:page_title][:value]
    @page.content = params[:page][:content][:page_content][:value]
    @page.save!
    render text: ""
  end


  
  private
  

  def page_params
    params.require(:page).permit(:name,:content, :author)
  end
end
