class MyShoppingListsController < ApplicationController
  before_action :set_my_shopping_list, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new edit create update destroy]

  # GET /my_shopping_lists or /my_shopping_lists.json
  def index
    @my_shopping_lists = MyShoppingList.all
  end

  # GET /my_shopping_lists/1 or /my_shopping_lists/1.json
  def show
  end

  # GET /my_shopping_lists/new
  def new
    @my_shopping_list = MyShoppingList.new
  end

  # GET /my_shopping_lists/1/edit
  def edit
  end

  # POST /my_shopping_lists or /my_shopping_lists.json
  def create
    @my_shopping_list = MyShoppingList.new(my_shopping_list_params)

    respond_to do |format|
      if @my_shopping_list.save
        format.html { redirect_to my_shopping_list_url(@my_shopping_list), notice: "My shopping list was successfully created." }
        format.json { render :show, status: :created, location: @my_shopping_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_shopping_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_shopping_lists/1 or /my_shopping_lists/1.json
  def update
    respond_to do |format|
      if @my_shopping_list.update(my_shopping_list_params)
        format.html { redirect_to my_shopping_list_url(@my_shopping_list), notice: "My shopping list was successfully updated." }
        format.json { render :show, status: :ok, location: @my_shopping_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_shopping_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_shopping_lists/1 or /my_shopping_lists/1.json
  def destroy
    @my_shopping_list.destroy

    respond_to do |format|
      format.html { redirect_to my_shopping_lists_url, notice: "My shopping list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_shopping_list
      @my_shopping_list = MyShoppingList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_shopping_list_params
      params.require(:my_shopping_list).permit(:title, :place, :Date, :ShoppingList)
    end
end
