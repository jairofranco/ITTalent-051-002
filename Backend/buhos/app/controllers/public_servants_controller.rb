class PublicServantsController < ApplicationController
  before_action :set_public_servant, only: [:show, :edit, :update, :destroy]

  # GET /public_servants
  # GET /public_servants.json
  def index
    @public_servants = PublicServant.all
  end

  # GET /public_servants/1
  # GET /public_servants/1.json
  def show
  end

  # GET /public_servants/new
  def new
    @public_servant = PublicServant.new
  end

  # GET /public_servants/1/edit
  def edit
  end

  # POST /public_servants
  # POST /public_servants.json
  def create
    @public_servant = PublicServant.new(public_servant_params)

    respond_to do |format|
      if @public_servant.save
        format.html { redirect_to @public_servant, notice: 'Public servant was successfully created.' }
        format.json { render :show, status: :created, location: @public_servant }
      else
        format.html { render :new }
        format.json { render json: @public_servant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_servants/1
  # PATCH/PUT /public_servants/1.json
  def update
    respond_to do |format|
      if @public_servant.update(public_servant_params)
        format.html { redirect_to @public_servant, notice: 'Public servant was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_servant }
      else
        format.html { render :edit }
        format.json { render json: @public_servant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_servants/1
  # DELETE /public_servants/1.json
  def destroy
    @public_servant.destroy
    respond_to do |format|
      format.html { redirect_to public_servants_url, notice: 'Public servant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_servant
      @public_servant = PublicServant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_servant_params
      params.require(:public_servant).permit(:name, :document, :position, :age, :period, :salary)
    end
end
