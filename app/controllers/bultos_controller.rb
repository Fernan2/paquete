class BultosController < ApplicationController
  # GET /bultos
  # GET /bultos.xml
  def index
    @bultos = Bulto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bultos }
    end
  end

  # GET /bultos/1
  # GET /bultos/1.xml
  def show
    @bulto = Bulto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bulto }
    end
  end

  # GET /bultos/new
  # GET /bultos/new.xml
  def new
    @bulto = Bulto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bulto }
    end
  end

  # GET /bultos/1/edit
  def edit
    @bulto = Bulto.find(params[:id])
  end

  # POST /bultos
  # POST /bultos.xml
  def create
    @bulto = Bulto.new(params[:bulto])

    respond_to do |format|
      if @bulto.save
        format.html { redirect_to(@bulto, :notice => 'Bulto was successfully created.') }
        format.xml  { render :xml => @bulto, :status => :created, :location => @bulto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bulto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bultos/1
  # PUT /bultos/1.xml
  def update
    @bulto = Bulto.find(params[:id])

    respond_to do |format|
      if @bulto.update_attributes(params[:bulto])
        format.html { redirect_to(@bulto, :notice => 'Bulto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bulto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bultos/1
  # DELETE /bultos/1.xml
  def destroy
    @bulto = Bulto.find(params[:id])
    @bulto.destroy

    respond_to do |format|
      format.html { redirect_to(bultos_url) }
      format.xml  { head :ok }
    end
  end
end
