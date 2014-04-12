#coding: utf-8
# Admin::TargetAgeRangesController
# Author:: Hiroyuki, Tajima
# Date:: 2014.04.10

#対象年齢範囲管理コントローラ
class Admin::TargetAgeRangesController < AdminController
  before_action :set_target_age_range, only: [:show, :edit, :update, :destroy]

  # GET /target_age_ranges
  # GET /target_age_ranges.json
  def index
    @target_age_ranges = TargetAgeRange.all
  end

  # GET /target_age_ranges/1
  # GET /target_age_ranges/1.json
  def show
  end

  # GET /target_age_ranges/new
  def new
    @target_age_range = TargetAgeRange.new
  end

  # GET /target_age_ranges/1/edit
  def edit
  end

  # POST /target_age_ranges
  # POST /target_age_ranges.json
  def create
    @target_age_range = TargetAgeRange.new(target_age_range_params)

    respond_to do |format|
      if @target_age_range.save
        format.html { redirect_to @target_age_range, notice: 'Target age range was successfully created.' }
        format.json { render action: 'show', status: :created, location: @target_age_range }
      else
        format.html { render action: 'new' }
        format.json { render json: @target_age_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /target_age_ranges/1
  # PATCH/PUT /target_age_ranges/1.json
  def update
    respond_to do |format|
      if @target_age_range.update(target_age_range_params)
        format.html { redirect_to @target_age_range, notice: 'Target age range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @target_age_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /target_age_ranges/1
  # DELETE /target_age_ranges/1.json
  def destroy
    @target_age_range.destroy
    respond_to do |format|
      format.html { redirect_to target_age_ranges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_target_age_range
      @target_age_range = TargetAgeRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def target_age_range_params
      params.require(:target_age_range).permit(:target_age_range)
    end
end
