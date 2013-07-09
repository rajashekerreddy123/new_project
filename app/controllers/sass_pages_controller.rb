class SassPagesController < ApplicationController
  # GET /sass_pages
  # GET /sass_pages.xml
  def index
    @sass_pages = SassPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sass_pages }
    end
  end

  # GET /sass_pages/1
  # GET /sass_pages/1.xml
  def show
    @sass_page = SassPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sass_page }
    end
  end

  # GET /sass_pages/new
  # GET /sass_pages/new.xml
  def new
    @sass_page = SassPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sass_page }
    end
  end

  # GET /sass_pages/1/edit
  def edit
    @sass_page = SassPage.find(params[:id])
  end

  # POST /sass_pages
  # POST /sass_pages.xml
  def create
    @sass_page = SassPage.new(params[:sass_page])

    respond_to do |format|
      if @sass_page.save
        flash[:notice] = 'SassPage was successfully created.'
        format.html { redirect_to(@sass_page) }
        format.xml  { render :xml => @sass_page, :status => :created, :location => @sass_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sass_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sass_pages/1
  # PUT /sass_pages/1.xml
  def update
    @sass_page = SassPage.find(params[:id])

    respond_to do |format|
      if @sass_page.update_attributes(params[:sass_page])
        flash[:notice] = 'SassPage was successfully updated.'
        format.html { redirect_to(@sass_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sass_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sass_pages/1
  # DELETE /sass_pages/1.xml
  def destroy
    @sass_page = SassPage.find(params[:id])
    @sass_page.destroy

    respond_to do |format|
      format.html { redirect_to(sass_pages_url) }
      format.xml  { head :ok }
    end
  end
end
