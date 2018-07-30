class Person2sController < ApplicationController
  before_action :set_person2, only: [:show, :edit, :update, :destroy]

  # GET /person2s
  # GET /person2s.json
  def index
    @person2s = Person2.all
  end

  # GET /person2s/1
  # GET /person2s/1.json
  def show
  end

  # GET /person2s/new
  def new
    @person2 = Person2.new
  end

  # GET /person2s/1/edit
  def edit
  end

  # POST /person2s
  # POST /person2s.json
  def create
    @person2 = Person2.new(person2_params)

    respond_to do |format|
      if @person2.save
        format.html { redirect_to @person2, notice: 'Person2 was successfully created.' }
        format.json { render :show, status: :created, location: @person2 }
      else
        format.html { render :new }
        format.json { render json: @person2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person2s/1
  # PATCH/PUT /person2s/1.json
  def update
    respond_to do |format|
      if @person2.update(person2_params)
        format.html { redirect_to @person2, notice: 'Person2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @person2 }
      else
        format.html { render :edit }
        format.json { render json: @person2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person2s/1
  # DELETE /person2s/1.json
  def destroy
    @person2.destroy
    respond_to do |format|
      format.html { redirect_to person2s_url, notice: 'Person2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person2
      @person2 = Person2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person2_params
      params.require(:person2).permit(:first_name, :last_name, :date_of_birth, :age)
    end
end
