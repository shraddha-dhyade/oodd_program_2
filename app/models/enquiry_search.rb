class EnquirySearch

attr_accessor :company_id
  def initialize (company_id)
    @company_id = company_id
  end


  def scope
    Listing.joins(:enquiries).where('company_id LIKE ?', @company_id)
    Enquiry.joins(:listing).where('company_id LIKE ?', @company_id)
  end

end
