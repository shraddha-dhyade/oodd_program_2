class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  protect_from_forgery prepend: true
  before_action :authenticate_user!
  # GET /listings
  # GET /listings.json
  def index
    #@listings = Listing.all
    @search = ListingSearch.new(params[:search])
    @listings = @search.scope
    #@listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing = current_user.listings.build
    #@companies = Company.all.map{|c| [c.name, c.id]}
    @companies = Company.all.map do |c|
      if current_user.company_id == c.id
        [c.name, c.id]
      end
    end
  end

  # GET /listings/1/edit
  def edit

    @companies = Company.all.map do |c|
      if current_user.company_id == c.id
        [c.name, c.id]
      end
    end
    #@company = current_user.company_id
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = current_user.listings.build(listing_params)
    @listing.company_id = params[:company_id]
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    @listing.company_id = params[:company_id]
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:location, :square_footage, :year_built, :style, :list_price, :floors, :basement, :current_house_owner, :contact, :company_id, :listing_img)
    end
end
