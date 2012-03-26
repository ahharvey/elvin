class GroupbUsersController < ApplicationController
  # GET /groupb_users
  # GET /groupb_users.json
  def index
    @groupb_users = GroupbUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @groupb_users }
    end
  end

  # GET /groupb_users/1
  # GET /groupb_users/1.json
  def show
    @groupb_user = GroupbUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @groupb_user }
    end
  end

  # GET /groupb_users/new
  # GET /groupb_users/new.json
  def new
    @groupb_user = GroupbUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @groupb_user }
    end
  end

  # GET /groupb_users/1/edit
  def edit
    @groupb_user = GroupbUser.find(params[:id])
  end

  # POST /groupb_users
  # POST /groupb_users.json
  def create
    @groupb_user = GroupbUser.new(params[:groupb_user])

    respond_to do |format|
      if @groupb_user.save
        format.html { redirect_to @groupb_user, :notice => 'Groupb user was successfully created.' }
        format.json { render :json => @groupb_user, :status => :created, :location => @groupb_user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @groupb_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupb_users/1
  # PUT /groupb_users/1.json
  def update
    @groupb_user = GroupbUser.find(params[:id])

    respond_to do |format|
      if @groupb_user.update_attributes(params[:groupb_user])
        format.html { redirect_to @groupb_user, :notice => 'Groupb user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @groupb_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupb_users/1
  # DELETE /groupb_users/1.json
  def destroy
    @groupb_user = GroupbUser.find(params[:id])
    @groupb_user.destroy

    respond_to do |format|
      format.html { redirect_to groupb_users_url }
      format.json { head :ok }
    end
  end
end
