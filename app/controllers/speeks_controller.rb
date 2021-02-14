# frozen_string_literal: true

class SpeeksController < ApplicationController
  before_action :set_speek, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # GET /speeks
  # GET /speeks.json
  def index
    @speeks = Speek.all
  end

  # GET /speeks/1
  # GET /speeks/1.json
  def show; end

  # GET /speeks/new
  def new
    @speek = Speek.new
    @speek = current_user.speeks.build
  end

  # GET /speeks/1/edit
  def edit; end

  # POST /speeks
  # POST /speeks.json
  def create
    @speek = current_user.speeks.build(speek_params)

    respond_to do |format|
      if @speek.save
        format.html { redirect_to root_path, notice: 'Speek was successfully created.' }
        format.json { render :show, status: :created, location: @speek }
      else
        format.html { render :new }
        format.json { render json: @speek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speeks/1
  # PATCH/PUT /speeks/1.json
  def update
    respond_to do |format|
      if @speek.update(speek_params)
        format.html { redirect_to @speek, notice: 'Speek was successfully updated.' }
        format.json { render :show, status: :ok, location: @speek }
      else
        format.html { render :edit }
        format.json { render json: @speek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speeks/1
  # DELETE /speeks/1.json
  def destroy
    @speek.destroy
    respond_to do |format|
      format.html { redirect_to speeks_url, notice: 'Speek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def like
    @speek = Speek.find(params[:id])
    Like.create(user_id: current_user.id, speek_id: @speek.id)
    redirect_to speek_path(@speek)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_speek
    @speek = Speek.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def speek_params
    params.require(:speek).permit(:content, :user_id, :category)
  end
end
