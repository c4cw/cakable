#coding: utf-8
# Admin::PrefecturesController
# Author:: Hiroyuki, Tajima
# Date:: 2014.04.10

#都道府県管理コントローラ
class Admin::PrefecturesController < ApplicationController
  before_action :set_prefecture, only: [:show, :edit, :update, :destroy]

  # GET /prefectures
  # GET /prefectures.json
  def index
    @prefectures = Prefecture.all
  end

  # GET /prefectures/1
  # GET /prefectures/1.json
  def show
  end

  # GET /prefectures/new
  def new
    @prefecture = Prefecture.new
  end

  # GET /prefectures/1/edit
  def edit
  end

  # POST /prefectures
  # POST /prefectures.json
  def create
    @prefecture = Prefecture.new(prefecture_params)

    respond_to do |format|
      if @prefecture.save
        format.html { redirect_to @prefecture, notice: 'Prefecture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prefecture }
      else
        format.html { render action: 'new' }
        format.json { render json: @prefecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prefectures/1
  # PATCH/PUT /prefectures/1.json
  def update
    respond_to do |format|
      if @prefecture.update(prefecture_params)
        format.html { redirect_to @prefecture, notice: 'Prefecture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prefecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prefectures/1
  # DELETE /prefectures/1.json
  def destroy
    @prefecture.destroy
    respond_to do |format|
      format.html { redirect_to prefectures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prefecture
      @prefecture = Prefecture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prefecture_params
      params.require(:prefecture).permit(:prefecture)
    end
end
