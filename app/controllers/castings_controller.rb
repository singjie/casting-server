class CastingsController < ApplicationController
  # GET /castings
  # GET /castings.json
  def index
    @castings = Casting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @castings }
    end
  end

  # GET /castings/1
  # GET /castings/1.json
  def show
    @casting = Casting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @casting }
    end
  end

  # GET /castings/new
  # GET /castings/new.json
  def new
    @casting = Casting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @casting }
    end
  end

  # GET /castings/1/edit
  def edit
    @casting = Casting.find(params[:id])
  end

  # POST /castings
  # POST /castings.json
  def create
    @casting = Casting.new(params[:casting])

    respond_to do |format|
      if @casting.save
        format.html { redirect_to @casting, notice: 'Casting was successfully created.' }
        format.json { render json: @casting, status: :created, location: @casting }
      else
        format.html { render action: "new" }
        format.json { render json: @casting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /castings/1
  # PUT /castings/1.json
  def update
    @casting = Casting.find(params[:id])

    respond_to do |format|
      if @casting.update_attributes(params[:casting])
        format.html { redirect_to @casting, notice: 'Casting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @casting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castings/1
  # DELETE /castings/1.json
  def destroy
    @casting = Casting.find(params[:id])
    @casting.destroy

    respond_to do |format|
      format.html { redirect_to castings_url }
      format.json { head :no_content }
    end
  end
  
  def latest
    @casting = Casting.latest
  end
  
  def popular
    @casting = Casting.where(:id => [1,2,3])
  end
  
  def invite
    @casting = Casting.where(:id => [2])
  end
end
