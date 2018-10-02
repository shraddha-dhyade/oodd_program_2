require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Basement", with: @listing.basement
    fill_in "Contact", with: @listing.contact
    fill_in "Current House Owner", with: @listing.current_house_owner
    fill_in "Floors", with: @listing.floors
    fill_in "List Price", with: @listing.list_price
    fill_in "Location", with: @listing.location
    fill_in "Square Footage", with: @listing.square_footage
    fill_in "Style", with: @listing.style
    fill_in "Year Built", with: @listing.year_built
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Basement", with: @listing.basement
    fill_in "Contact", with: @listing.contact
    fill_in "Current House Owner", with: @listing.current_house_owner
    fill_in "Floors", with: @listing.floors
    fill_in "List Price", with: @listing.list_price
    fill_in "Location", with: @listing.location
    fill_in "Square Footage", with: @listing.square_footage
    fill_in "Style", with: @listing.style
    fill_in "Year Built", with: @listing.year_built
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
