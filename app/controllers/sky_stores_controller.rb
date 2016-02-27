class SkyStoresController < ApplicationController
  before_action :set_sky_store, only: [:show, :edit, :update, :destroy]

  # GET /sky_stores
  # GET /sky_stores.json
  def index
    @sky_stores = SkyStore.all
  end

  # GET /sky_stores/1
  # GET /sky_stores/1.json
  def show
  end

  # GET /sky_stores/new
  def new
    @sky_store = SkyStore.new
  end

  # GET /sky_stores/1/edit
  def edit
  end

  # POST /sky_stores
  # POST /sky_stores.json
  def create
    @sky_store = SkyStore.new(sky_store_params)

    respond_to do |format|
      if @sky_store.save
        format.html { redirect_to @sky_store, notice: 'Sky store was successfully created.' }
        format.json { render :show, status: :created, location: @sky_store }
      else
        format.html { render :new }
        format.json { render json: @sky_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sky_stores/1
  # PATCH/PUT /sky_stores/1.json
  def update
    respond_to do |format|
      if @sky_store.update(sky_store_params)
        format.html { redirect_to @sky_store, notice: 'Sky store was successfully updated.' }
        format.json { render :show, status: :ok, location: @sky_store }
      else
        format.html { render :edit }
        format.json { render json: @sky_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sky_stores/1
  # DELETE /sky_stores/1.json
  def destroy
    @sky_store.destroy
    respond_to do |format|
      format.html { redirect_to sky_stores_url, notice: 'Sky store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sky_store
      @sky_store = SkyStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sky_store_params
      params.require(:sky_store).permit(:total, :bill_id)
    end
end
