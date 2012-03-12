class OrderedProductsController < ApplicationController
  # GET /ordered_products
  # GET /ordered_products.json
  def index
    @ordered_products = OrderedProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ordered_products }
    end
  end

  # GET /ordered_products/1
  # GET /ordered_products/1.json
  def show
    @ordered_product = OrderedProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ordered_product }
    end
  end

  # GET /ordered_products/new
  # GET /ordered_products/new.json
  def new
    @ordered_product = OrderedProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ordered_product }
    end
  end

  # GET /ordered_products/1/edit
  def edit
    @ordered_product = OrderedProduct.find(params[:id])
  end

  # POST /ordered_products
  # POST /ordered_products.json
  def create
    @ordered_product = OrderedProduct.new(params[:ordered_product])

    respond_to do |format|
      if @ordered_product.save
        format.html { redirect_to @ordered_product, :notice => 'Ordered product was successfully created.' }
        format.json { render :json => @ordered_product, :status => :created, :location => @ordered_product }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ordered_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ordered_products/1
  # PUT /ordered_products/1.json
  def update
    @ordered_product = OrderedProduct.find(params[:id])

    respond_to do |format|
      if @ordered_product.update_attributes(params[:ordered_product])
        format.html { redirect_to @ordered_product, :notice => 'Ordered product was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ordered_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ordered_products/1
  # DELETE /ordered_products/1.json
  def destroy
    @ordered_product = OrderedProduct.find(params[:id])
    @ordered_product.destroy

    respond_to do |format|
      format.html { redirect_to ordered_products_url }
      format.json { head :ok }
    end
  end
end
