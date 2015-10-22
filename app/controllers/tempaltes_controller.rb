class TempaltesController < ApplicationController
  before_action :set_tempalte, only: [:show, :edit, :update, :destroy]

  # GET /tempaltes
  # GET /tempaltes.json
  def index
    @tempaltes = Tempalte.all
  end

  # GET /tempaltes/1
  # GET /tempaltes/1.json
  def show
  end

  # GET /tempaltes/new
  def new
    @tempalte = Tempalte.new
  end

  # GET /tempaltes/1/edit
  def edit
  end

  # POST /tempaltes
  # POST /tempaltes.json
  def create
    @tempalte = Tempalte.new(tempalte_params)

    respond_to do |format|
      if @tempalte.save
        format.html { redirect_to @tempalte, notice: 'Tempalte was successfully created.' }
        format.json { render :show, status: :created, location: @tempalte }
      else
        format.html { render :new }
        format.json { render json: @tempalte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempaltes/1
  # PATCH/PUT /tempaltes/1.json
  def update
    respond_to do |format|
      if @tempalte.update(tempalte_params)
        format.html { redirect_to @tempalte, notice: 'Tempalte was successfully updated.' }
        format.json { render :show, status: :ok, location: @tempalte }
      else
        format.html { render :edit }
        format.json { render json: @tempalte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempaltes/1
  # DELETE /tempaltes/1.json
  def destroy
    @tempalte.destroy
    respond_to do |format|
      format.html { redirect_to tempaltes_url, notice: 'Tempalte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempalte
      @tempalte = Tempalte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tempalte_params
      params.require(:tempalte).permit(:description, :name, :filename)
    end
end
