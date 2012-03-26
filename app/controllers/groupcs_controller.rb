class GroupcsController < ApplicationController
  # GET /groupcs
  # GET /groupcs.json
  def index
    @groupcs = Groupc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @groupcs }
    end
  end

  # GET /groupcs/1
  # GET /groupcs/1.json
  def show
    @groupc = Groupc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @groupc }
    end
  end

  # GET /groupcs/new
  # GET /groupcs/new.json
  def new
    @groupc = Groupc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @groupc }
    end
  end

  # GET /groupcs/1/edit
  def edit
    @groupc = Groupc.find(params[:id])
  end

  # POST /groupcs
  # POST /groupcs.json
  def create
    @groupc = Groupc.new(params[:groupc])

    respond_to do |format|
      if @groupc.save
        format.html { redirect_to @groupc, :notice => 'Groupc was successfully created.' }
        format.json { render :json => @groupc, :status => :created, :location => @groupc }
      else
        format.html { render :action => "new" }
        format.json { render :json => @groupc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupcs/1
  # PUT /groupcs/1.json
  def update
    @groupc = Groupc.find(params[:id])

    respond_to do |format|
      if @groupc.update_attributes(params[:groupc])
        format.html { redirect_to @groupc, :notice => 'Groupc was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @groupc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupcs/1
  # DELETE /groupcs/1.json
  def destroy
    @groupc = Groupc.find(params[:id])
    @groupc.destroy

    respond_to do |format|
      format.html { redirect_to groupcs_url }
      format.json { head :ok }
    end
  end
end
