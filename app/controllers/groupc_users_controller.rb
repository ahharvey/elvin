class GroupcUsersController < ApplicationController
  # GET /groupc_users
  # GET /groupc_users.json
  def index
    @groupc_users = GroupcUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @groupc_users }
    end
  end

  # GET /groupc_users/1
  # GET /groupc_users/1.json
  def show
    @groupc_user = GroupcUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @groupc_user }
    end
  end

  # GET /groupc_users/new
  # GET /groupc_users/new.json
  def new
    @groupc_user = GroupcUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @groupc_user }
    end
  end

  # GET /groupc_users/1/edit
  def edit
    @groupc_user = GroupcUser.find(params[:id])
  end

  # POST /groupc_users
  # POST /groupc_users.json
  def create
    @groupc_user = GroupcUser.new(params[:groupc_user])

    respond_to do |format|
      if @groupc_user.save
        format.html { redirect_to @groupc_user, :notice => 'Groupc user was successfully created.' }
        format.json { render :json => @groupc_user, :status => :created, :location => @groupc_user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @groupc_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupc_users/1
  # PUT /groupc_users/1.json
  def update
    @groupc_user = GroupcUser.find(params[:id])

    respond_to do |format|
      if @groupc_user.update_attributes(params[:groupc_user])
        format.html { redirect_to @groupc_user, :notice => 'Groupc user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @groupc_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupc_users/1
  # DELETE /groupc_users/1.json
  def destroy
    @groupc_user = GroupcUser.find(params[:id])
    @groupc_user.destroy

    respond_to do |format|
      format.html { redirect_to groupc_users_url }
      format.json { head :ok }
    end
  end
end
