class DownsController < ApplicationController
  before_action :set_down, only: [:show, :edit, :update, :destroy]

  # GET /downs
  # GET /downs.json
  def index
    up = Up.find(params[:up_id])
    @downs = up.downs

    respond_to do |format|
      format.html
      format.xml {render :xml => @downs}
    end
  end

  # GET /downs/1
  # GET /downs/1.json
  def show
    up = Up.find(params[:up_id])
    @downs = up.downs.find(params[:id])

    respond_to do |format|
      format.html
      format.xml {render :xml => @down}
    end
  end

  # GET /downs/new
  def new
    up = Up.find(params[:up_id])
    @down = up.downs.build

    respond_to do |format|
      format.html
      format.xml {render :xml => @down}
    end
  end

  # GET /downs/1/edit
  def edit
    up = Up.find(params[:up_id])
    @down = up.downs.find(params[:id])
  end

  # POST /downs
  # POST /downs.json
  def create
    up = Up.find(params[:up_id])
    @down = up.downs.create(down_params)

    respond_to do |format|
      if @down.save
        format.html { redirect_to [@down.up], notice: 'Down was successfully created.' }
        format.json { render action: 'show', status: :created, location: @down }
      else
        format.html { render action: 'new' }
        format.json { render json: @down.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /downs/1
  # PATCH/PUT /downs/1.json
  def update
    up = Up.find(params[:up_id])
    @down = up.downs.find(params[:id])

    respond_to do |format|
      if @down.update_attributes(down_params)
        format.html { redirect_to up_downs_url notice: 'Down was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @down.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /downs/1
  # DELETE /downs/1.json
  def destroy
    up = Up.find(params[:up_id])
    @down = up.downs.find(params[:id])
    @down.destroy
    respond_to do |format|
      format.html { redirect_to up_downs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_down
      @down = Down.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def down_params
      params.require(:down).permit(:number)
    end
end
