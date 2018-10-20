class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]
  protect_from_forgery prepend: true
  before_action :authenticate_user!
  # GET /enquiries
  # GET /enquiries.json
  def index
    if current_user.role == "realtor"
      @search = EnquirySearch.new(current_user.company_id)
      #@search = ListingSearch.new(params[:search])
      @enquiries = @search.scope
    else
      @enquiries = Enquiry.all
    end
  end

  # GET /enquiries/1
  # GET /enquiries/1.json
  def show
  end

  # GET /enquiries/new
  def new
    @enquiry = current_user.enquiries.build
    @listings = Listing.all.map{|l| [l.current_house_owner,l.id]}
  end

  # GET /enquiries/1/edit
  def edit
    @listings = Listing.all.map{|l| [l.current_house_owner,l.id]}
  end

  # POST /enquiries
  # POST /enquiries.json
  def create
    @enquiry =current_user.enquiries.build(enquiry_params)
    @enquiry.listing_id = params[:listing_id]
    respond_to do |format|
      if @enquiry.save
        format.html { redirect_to @enquiry, notice: 'Enquiry was successfully created.' }
        format.json { render :show, status: :created, location: @enquiry }
      else
        format.html { render :new }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enquiries/1
  # PATCH/PUT /enquiries/1.json
  def update
    #@enquiry.listing_id = params[:listing_id]
    respond_to do |format|
      if @enquiry.update(enquiry_params)
        format.html { redirect_to @enquiry, notice: 'Enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @enquiry }
      else
        format.html { render :edit }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquiries/1
  # DELETE /enquiries/1.json
  def destroy
    @enquiry.destroy
    respond_to do |format|
      format.html { redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enquiry_params
      params.require(:enquiry).permit(:subject, :message_content, :listing_id)
    end
end