class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  def delete_all
    Inventory.where("created_at::date = ?", Inventory.where(id: params[:inventory_id])[0].created_at).destroy_all
    flash[:notice] = "You have removed all results!"
    redirect_to inventories_path
  end
  # GET /inventories
  # GET /inventories.json
  def index
    @inventories = Inventory.all
  end

  # GET /inventories/1
  # GET /inventories/1.json
  def show

  end

  # GET /inventories/new
  def new
    @inventory = Inventory.new
  end

  # GET /inventories/1/edit
  def edit
  end

  # POST /inventories
  # POST /inventories.json
  def create
    params[:inventory].each do |p|
      Inventory.create(amount: p[:amount].to_d, user_id: p[:user_id].to_i, product_id: p[:product_id].to_i, number: p[:number].to_i)
    end
    respond_to do |format|
      format.html { redirect_to inventories_path, notice: 'Inventory was successfully created.' }
      format.json { render :show, status: :created, location: @inventory }
    end
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    params[:inventory].each do |p|
      Inventory.find(p[:inventory_id]).destroy
      Inventory.create(amount: p[:amount], user_id: p[:user_id].to_i, product_id: p[:product_id].to_i, number: p[:number].to_i)
    end
    respond_to do |format|
      format.html { redirect_to inventories_path, notice: 'Inventory was successfully updated.' }
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.json
  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
      params.require(:inventory).permit(:amount, :user_id, :product_id, :number)
    end
end
