class PearlsController < ApplicationController
  before_action :set_pearl, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  before_action :set_users, only: [:new, :create, :edit, :update]
  before_action :set_games, only: [:new, :create, :edit, :update]

  # GET /pearls
  # GET /pearls.json
  def index
    @pearls = Pearl.all
  end

  # GET /pearls/1
  # GET /pearls/1.json
  def show
  end

  # GET /pearls/new
  def new
    @pearl = Pearl.new
  end

  # GET /pearls/1/edit
  def edit
  end

  # POST /pearls
  # POST /pearls.json
  def create
    @pearl = Pearl.new(pearl_params)

    respond_to do |format|
      if @pearl.save
        format.html { redirect_to @pearl, notice: 'Pearl was successfully created.' }
        format.json { render :show, status: :created, location: @pearl }
      else
        format.html { render :new }
        format.json { render json: @pearl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pearls/1
  # PATCH/PUT /pearls/1.json
  def update
    respond_to do |format|
      if @pearl.update(pearl_params)
        format.html { redirect_to @pearl, notice: 'Pearl was successfully updated.' }
        format.json { render :show, status: :ok, location: @pearl }
      else
        format.html { render :edit }
        format.json { render json: @pearl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pearls/1
  # DELETE /pearls/1.json
  def destroy
    @pearl.destroy
    respond_to do |format|
      format.html { redirect_to pearls_url, notice: 'Pearl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pearl
      @pearl = Pearl.find(params[:id])
    end
  
    def set_users
      @users = User.all
    end
  
    def set_games
      @games = Game.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pearl_params
      params.require(:pearl).permit(:quote, :game_id, :user_id)
    end
end
