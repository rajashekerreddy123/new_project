class AttendencesController < ApplicationController
  # GET /attendences
  # GET /attendences.xml
  include ForTesting
  def index
    @attendences = Attendence.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendences }
    end
  end

  # GET /attendences/1
  # GET /attendences/1.xml
  def show
    @attendence = Attendence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendence }
    end
  end

  # GET /attendences/new
  # GET /attendences/new.xml
  def new
    @attendence = Attendence.new
    Sairam1.printing
    Sairam::Test.im_awesome
    puts Sairam.withotclass1,"dddddddddddddd"
ram(s={'sai'=>:ram,"kumar"=>:swamy})
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendence }
    end
  end
def ram(y)
  puts y.class,"rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
end
  # GET /attendences/1/edit
  def edit
    @attendence = Attendence.find(params[:id])
  end

  # POST /attendences
  # POST /attendences.xml
  def create
    @attendence = Attendence.new(params[:attendence])
#     gods = params[:gods]
#     presence = params[:presence]
#     s=""
#     hash={}
#     for i in 0...presence.length
#       hash.store('st_no',gods[i])
#       hash.store('pr_no',presence[i])
#       s+=hash.to_s
#     end
#     gods=["ram","laxman","hanuman","sai"]
#     presence=["yes","no","yes","no"]
#     s1=""
#     for i in 0...presence.length
#       hash.store('st_no',gods[i])
#       hash.store('pr_no',presence[i])
#       s1+=hash.to_s
#     end

# output i want : {{"st_no"=>"ram", "pr_no"=>"yes"},{"st_no"=>"laxman", "pr_no"=>"no"},{"st_no"=>"hanuman", "pr_no"=>"yes"},{"st_no"=>"sai", "pr_no"=>"no"}}
    respond_to do |format|
      if @attendence.save
        flash[:notice] = 'Attendence was successfully created.'
        format.html { redirect_to(@attendence) }
        format.xml  { render :xml => @attendence, :status => :created, :location => @attendence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendences/1
  # PUT /attendences/1.xml
  def update
    @attendence = Attendence.find(params[:id])

    respond_to do |format|
      if @attendence.update_attributes(params[:attendence])
        flash[:notice] = 'Attendence was successfully updated.'
        format.html { redirect_to(@attendence) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendences/1
  # DELETE /attendences/1.xml
  def destroy
    @attendence = Attendence.find(params[:id])
    @attendence.destroy

    respond_to do |format|
      format.html { redirect_to(attendences_url) }
      format.xml  { head :ok }
    end
  end
  def get_attendence
     @array=['ram','sai','ganesh','shiva']
     render :partial => "attendence_children"
  end
end
