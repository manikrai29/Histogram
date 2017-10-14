class EnrolllsController < ApplicationController
  before_action :set_enrolll, only: [:show, :edit, :update, :destroy]

  # GET /enrollls
  # GET /enrollls.json
  def index
    @enrollls = Enrolll.all
  end

  # GET /enrollls/1
  # GET /enrollls/1.json
  def show
  end

  # GET /enrollls/new
  def new
    @enrolll = Enrolll.new
  end

  # GET /enrollls/1/edit
  def edit
  end

  # POST /enrollls
  # POST /enrollls.json
  def create
    @enrolll = Enrolll.new(enrolll_params)

    respond_to do |format|
      if @enrolll.save
        format.html { redirect_to @enrolll, notice: 'Enrolll was successfully created.' }
        format.json { render :show, status: :created, location: @enrolll }
      else
        format.html { render :new }
        format.json { render json: @enrolll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollls/1
  # PATCH/PUT /enrollls/1.json
  def update
    respond_to do |format|
      if @enrolll.update(enrolll_params)
        format.html { redirect_to @enrolll, notice: 'Enrolll was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrolll }
      else
        format.html { render :edit }
        format.json { render json: @enrolll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollls/1
  # DELETE /enrollls/1.json
  def destroy
    @enrolll.destroy
    respond_to do |format|
      format.html { redirect_to enrollls_url, notice: 'Enrolll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolll
      @enrolll = Enrolll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolll_params
      params.require(:enrolll).permit(:student_id, :course_id, :percentage, :lettergrade)
    end
end
