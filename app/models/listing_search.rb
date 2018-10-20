class ListingSearch
  attr_accessor :price_from, :price_to
  attr_accessor :square_footage_from, :square_footage_to
  attr_accessor :location
  def initialize(params)
    params ||= {}
    @price_from = parsed_price(params[:price_from], 0)
    @price_to = parsed_price(params[:price_to], 1000)
    @square_footage_from = parsed_square_footage(params[:square_footage_from], 0)
    @square_footage_to = parsed_square_footage(params[:square_footage_to], 100000)
    @location = parsed_location(params[:location], nil)
  end

  def scope
    #Listing.where('list_price BETWEEN ? AND ?', @price_from, @price_to)
    #Listing.where('square_footage BETWEEN ? AND ?', @square_footage_from, @square_footage_to)
    if @location != nil
      Listing.where('list_price BETWEEN ? AND ? AND square_footage BETWEEN ? AND ? AND location LIKE ? ', @price_from, @price_to, @square_footage_from, @square_footage_to, @location)
    else
      Listing.where('list_price BETWEEN ? AND ? AND square_footage BETWEEN ? AND ?', @price_from, @price_to, @square_footage_from, @square_footage_to)
    end
  end

  private
  def parsed_location (input_location, default)
    if input_location == ''
      return nil
    else
      input_location
    end


  rescue ArgumentError, TypeError
    default
  end

  def parsed_price(input_price, default)
    if input_price
      input_price
    else
      default
    end
  rescue ArgumentError, TypeError
    default
  end

  def parsed_square_footage(square_footage, default)
    if square_footage
      square_footage
    else
      default
    end
  rescue ArgumentError, TypeError
    default
  end
end