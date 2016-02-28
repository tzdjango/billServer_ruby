class ReadDataController < ApplicationController
  before_action :set_read_datum, only: [:show, :edit, :update, :destroy]

  require 'json'
  require 'open-uri'


  # GET /read_data
  # GET /read_data.json
  def index
    source = "http://safe-plains-5453.herokuapp.com/bill.json"
    @read_datum = ReadDatum.new(JSON.load(open(source)))
    #@read_datum = JSON.load(open(source))
    puts @read_datum
    #@read_data = ReadDatum.all
  end

  # GET /read_data/1
  # GET /read_data/1.json
  def show
  end

  # GET /read_data/new
  def new
    @read_datum = ReadDatum.new
  end

  # GET /read_data/1/edit
  def edit
  end

  # POST /read_data
  # POST /read_data.json
  def create
    @read_datum = ReadDatum.new(read_datum_params)

    respond_to do |format|
      if @read_datum.save
        format.html { redirect_to @read_datum, notice: 'Read datum was successfully created.' }
        format.json { render :show, status: :created, location: @read_datum }
      else
        format.html { render :new }
        format.json { render json: @read_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /read_data/1
  # PATCH/PUT /read_data/1.json
  def update
    respond_to do |format|
      if @read_datum.update(read_datum_params)
        format.html { redirect_to @read_datum, notice: 'Read datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @read_datum }
      else
        format.html { render :edit }
        format.json { render json: @read_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /read_data/1
  # DELETE /read_data/1.json
  def destroy
    @read_datum.destroy
    respond_to do |format|
      format.html { redirect_to read_data_url, notice: 'Read datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read_datum
      @read_datum = ReadDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def read_datum_params
      params.require(:read_datum).permit(:data)
    end
end
