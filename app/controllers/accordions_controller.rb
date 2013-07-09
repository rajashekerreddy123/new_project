class AccordionsController < ApplicationController
  # GET /accordions
  # GET /accordions.xml
  
  # def index
  #   @accordions = Accordion.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.xml  { render :xml => @accordions }
  #   end
  # end

def index
  @accordions = Accordion.all
  respond_to do |format|
    format.html
    format.csv { send_data @accordions.to_csv }
    format.xls # { send_data @products.to_csv(col_sep: "\t") }
  end
end

  # GET /accordions/1
  # GET /accordions/1.xml
  def show
    @accordion = Accordion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @accordion }
    end
  end

  # GET /accordions/new
  # GET /accordions/new.xml
  def new
    @accordion = Accordion.new

   first = Accordion.first
     @heading =""
     @image = ""
     @paragraph = ""
     unless first.blank?
      @heading = first.heading
      @image = first.image
      @paragraph = first.paragraph
     end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @accordion }
    end
  end

  # GET /accordions/1/edit
  def edit
    @accordion = Accordion.find(params[:id])
  end

  # POST /accordions
  # POST /accordions.xml
  def create
    @accordion = Accordion.new(params[:accordion])

    respond_to do |format|
      if @accordion.save
        flash[:notice] = 'Accordion was successfully created.'
        format.html { redirect_to(@accordion) }
        format.xml  { render :xml => @accordion, :status => :created, :location => @accordion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @accordion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /accordions/1
  # PUT /accordions/1.xml
  def update
    @accordion = Accordion.find(params[:id])

    respond_to do |format|
      if @accordion.update_attributes(params[:accordion])
        flash[:notice] = 'Accordion was successfully updated.'
        format.html { redirect_to(@accordion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @accordion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accordions/1
  # DELETE /accordions/1.xml
  def destroy
    @accordion = Accordion.find(params[:id])
    @accordion.destroy

    respond_to do |format|
      format.html { redirect_to(accordions_url) }
      format.xml  { head :ok }
    end
  end
end
