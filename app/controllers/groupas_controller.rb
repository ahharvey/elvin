class GroupasController < ApplicationController
  # GET /groupas
  # GET /groupas.json
  def index
    @groupas = Groupa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @groupas }
    end
  end

  # GET /groupas/1
  # GET /groupas/1.json
  def show
    @groupa = Groupa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @groupa }
    end
  end

  # GET /groupas/new
  # GET /groupas/new.json
  def new
    @groupa = Groupa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @groupa }
    end
  end

  # GET /groupas/1/edit
  def edit
    @groupa = Groupa.find(params[:id])
  end

  # POST /groupas
  # POST /groupas.json
  def create
    @groupa = Groupa.new(params[:groupa])

    respond_to do |format|
      if @groupa.save
        format.html { redirect_to @groupa, :notice => 'Groupa was successfully created.' }
        format.json { render :json => @groupa, :status => :created, :location => @groupa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @groupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupas/1
  # PUT /groupas/1.json
  def update
    @groupa = Groupa.find(params[:id])

    respond_to do |format|
      if @groupa.update_attributes(params[:groupa])
        format.html { redirect_to @groupa, :notice => 'Groupa was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @groupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupas/1
  # DELETE /groupas/1.json
  def destroy
    @groupa = Groupa.find(params[:id])
    @groupa.destroy

    respond_to do |format|
      format.html { redirect_to groupas_url }
      format.json { head :ok }
    end
  end
end
