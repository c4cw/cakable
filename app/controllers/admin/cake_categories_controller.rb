#coding: utf-8
# Admin::CakeCategoriesController
# Author:: Hiroyuki, Tajima
# Date:: 2014.04.10

#ケーキカテゴリ管理コントローラ
class Admin::CakeCategoriesController < AdminController
  before_action :set_cake_category, only: [:show, :edit, :update, :destroy]

  # GET /cake_categories
  # GET /cake_categories.json
  def index
    @cake_categories = CakeCategory.all
  end

  # GET /cake_categories/1
  # GET /cake_categories/1.json
  def show
  end

  # GET /cake_categories/new
  def new
    @cake_category = CakeCategory.new
  end

  # GET /cake_categories/1/edit
  def edit
  end

  # POST /cake_categories
  # POST /cake_categories.json
  def create
    @cake_category = CakeCategory.new(cake_category_params)

    respond_to do |format|
      if @cake_category.save
        format.html { redirect_to @cake_category, notice: 'Cake category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cake_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @cake_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_categories/1
  # PATCH/PUT /cake_categories/1.json
  def update
    respond_to do |format|
      if @cake_category.update(cake_category_params)
        format.html { redirect_to @cake_category, notice: 'Cake category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cake_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_categories/1
  # DELETE /cake_categories/1.json
  def destroy
    @cake_category.destroy
    respond_to do |format|
      format.html { redirect_to cake_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_category
      @cake_category = CakeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cake_category_params
      params.require(:cake_category).permit(:category_name)
    end
end
