class FeedsController < ApplicationController
#  before_filter :authenticate_user!
  # GET /feeds
  # GET /feeds.json
  def index
    @feeds = Feed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @feeds }
    end
  end

  def host
    h = Host.find(params[:id])
    @feeds = Feed.find_all_by_host_name h.name

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @feeds }
    end
  end

  # GET /feeds/1
  # GET /feeds/1.json
  def show
    @feed = Feed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @feed }
    end
  end

  # GET /feeds/new
  # GET /feeds/new.json
  def new
    @feed = Feed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @feed }
    end
  end

  # GET /feeds/1/edit
  def edit
    @feed = Feed.find(params[:id])
  end

  # POST /feeds
  # POST /feeds.json
  def create
    host = Host.find(params[:feed][:host])
    params[:feed][:host] = host
    @feed = Feed.new(params[:feed])
    @feed.host = host
    @feed.host_name = host.name

    respond_to do |format|
      if @feed.save
        @feed.update_attribute(:host_name, host.name)
        format.html { redirect_to @feed, :notice => 'Feed was successfully created.' }
        format.json { render :json => @feed, :status => :created, :location => @feed }
      else
        format.html { render :action => "new" }
        format.json { render :json => @feed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feeds/1
  # PUT /feeds/1.json
  def update
    host = Host.find(params[:feed][:host])
    params[:feed][:host] = host
    params[:feed][:host_name] = host.name
    @feed = Feed.find(params[:id])

    respond_to do |format|
      if @feed.update_attributes(params[:feed])
        format.html { redirect_to @feed, :notice => 'Feed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @feed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feeds/1
  # DELETE /feeds/1.json
  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy

    respond_to do |format|
      format.html { redirect_to feeds_url }
      format.json { head :no_content }
    end
  end
end
