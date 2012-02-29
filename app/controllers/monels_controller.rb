class MonelsController < ApplicationController
  # GET /monels
  # GET /monels.json
  def index
    @monels = Monel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monels }
    end
  end

  # GET /monels/1
  # GET /monels/1.json
  def show
    @monel = Monel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monel }
    end
  end

  # GET /monels/new
  # GET /monels/new.json
  def new
    @monel = Monel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monel }
    end
  end

  # GET /monels/1/edit
  def edit
    @monel = Monel.find(params[:id])
  end

  # POST /monels
  # POST /monels.json
  def create
    @monel = Monel.new(params[:monel])

    respond_to do |format|
      if @monel.save
        format.html { redirect_to @monel, notice: 'Monel was successfully created.' }
        format.json { render json: @monel, status: :created, location: @monel }
      else
        format.html { render action: "new" }
        format.json { render json: @monel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monels/1
  # PUT /monels/1.json
  def update
    @monel = Monel.find(params[:id])

    respond_to do |format|
      if @monel.update_attributes(params[:monel])
        format.html { redirect_to @monel, notice: 'Monel was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @monel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monels/1
  # DELETE /monels/1.json
  def destroy
    @monel = Monel.find(params[:id])
    @monel.destroy

    respond_to do |format|
      format.html { redirect_to monels_url }
      format.json { head :ok }
    end
  end
end
