class GroupbsController < ApplicationController
  # GET /groupbs
  # GET /groupbs.json
  def index
    @groupbs = Groupb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @groupbs }
    end
  end

  # GET /groupbs/1
  # GET /groupbs/1.json
  def show
    @groupb = Groupb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @groupb }
    end
  end

  # GET /groupbs/new
  # GET /groupbs/new.json
  def new
    @groupb = Groupb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @groupb }
    end
  end

  # GET /groupbs/1/edit
  def edit
    @groupb = Groupb.find(params[:id])
  end

  # POST /groupbs
  # POST /groupbs.json
  def create
    @groupb = Groupb.new(params[:groupb])

    respond_to do |format|
      if @groupb.save
        format.html { redirect_to @groupb, :notice => 'Groupb was successfully created.' }
        format.json { render :json => @groupb, :status => :created, :location => @groupb }
      else
        format.html { render :action => "new" }
        format.json { render :json => @groupb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupbs/1
  # PUT /groupbs/1.json
  def update
    @groupb = Groupb.find(params[:id])

    respond_to do |format|
      if @groupb.update_attributes(params[:groupb])
        format.html { redirect_to @groupb, :notice => 'Groupb was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @groupb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupbs/1
  # DELETE /groupbs/1.json
  def destroy
    @groupb = Groupb.find(params[:id])
    @groupb.destroy

    respond_to do |format|
      format.html { redirect_to groupbs_url }
      format.json { head :ok }
    end
  end
end
