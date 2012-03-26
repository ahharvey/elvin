class GroupaUsersController < ApplicationController
  # GET /groupa_users
  # GET /groupa_users.json
  def index
    @groupa_users = GroupaUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @groupa_users }
    end
  end

  # GET /groupa_users/1
  # GET /groupa_users/1.json
  def show
    @groupa_user = GroupaUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @groupa_user }
    end
  end

  # GET /groupa_users/new
  # GET /groupa_users/new.json
  def new
    @groupa_user = GroupaUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @groupa_user }
    end
  end

  # GET /groupa_users/1/edit
  def edit
    @groupa_user = GroupaUser.find(params[:id])
  end

  # POST /groupa_users
  # POST /groupa_users.json
  def create
    @groupa_user = GroupaUser.new(params[:groupa_user])

    respond_to do |format|
      if @groupa_user.save
        format.html { redirect_to @groupa_user, :notice => 'Groupa user was successfully created.' }
        format.json { render :json => @groupa_user, :status => :created, :location => @groupa_user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @groupa_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groupa_users/1
  # PUT /groupa_users/1.json
  def update
    @groupa_user = GroupaUser.find(params[:id])

    respond_to do |format|
      if @groupa_user.update_attributes(params[:groupa_user])
        format.html { redirect_to @groupa_user, :notice => 'Groupa user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @groupa_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groupa_users/1
  # DELETE /groupa_users/1.json
  def destroy
    @groupa_user = GroupaUser.find(params[:id])
    @groupa_user.destroy

    respond_to do |format|
      format.html { redirect_to groupa_users_url }
      format.json { head :ok }
    end
  end
end
