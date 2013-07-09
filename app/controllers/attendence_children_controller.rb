class AttendenceChildrenController < ApplicationController
  # GET /attendence_children
  # GET /attendence_children.xml
  def index
    @attendence_children = AttendenceChild.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendence_children }
    end
  end

  # GET /attendence_children/1
  # GET /attendence_children/1.xml
  def show
    @attendence_child = AttendenceChild.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendence_child }
    end
  end

  # GET /attendence_children/new
  # GET /attendence_children/new.xml
  def new
    @attendence_child = AttendenceChild.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendence_child }
    end
  end

  # GET /attendence_children/1/edit
  def edit
    @attendence_child = AttendenceChild.find(params[:id])
  end

  # POST /attendence_children
  # POST /attendence_children.xml
  def create
    @attendence_child = AttendenceChild.new(params[:attendence_child])

    respond_to do |format|
      if @attendence_child.save
        flash[:notice] = 'AttendenceChild was successfully created.'
        format.html { redirect_to(@attendence_child) }
        format.xml  { render :xml => @attendence_child, :status => :created, :location => @attendence_child }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendence_child.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendence_children/1
  # PUT /attendence_children/1.xml
  def update
    @attendence_child = AttendenceChild.find(params[:id])

    respond_to do |format|
      if @attendence_child.update_attributes(params[:attendence_child])
        flash[:notice] = 'AttendenceChild was successfully updated.'
        format.html { redirect_to(@attendence_child) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendence_child.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendence_children/1
  # DELETE /attendence_children/1.xml
  def destroy
    @attendence_child = AttendenceChild.find(params[:id])
    @attendence_child.destroy

    respond_to do |format|
      format.html { redirect_to(attendence_children_url) }
      format.xml  { head :ok }
    end
  end
end
