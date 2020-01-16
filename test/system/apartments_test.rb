require "application_system_test_case"

class ApartmentsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    assert_selector "div", class: "navbar-index"
    assert_selector ".card-apartment", count: 5
  end

  test "searching for barcelona" do
    visit "/"
    fill_in 'search_keywords', with: "barcelona"
    click_on "search-button-invalidated"
    assert_selector ".card-apartment", count: 5
  end

  test "searching for slkfdjsldkfj" do
    visit "/"
    fill_in 'search_keywords', with: "slkfdjsldkfj"
    click_on "search-button-invalidated"
    assert_text "No results for given keywords or parameters"
  end

  test "searching for barcelona with impossible parameter" do
    visit "/"
    fill_in 'search_keywords', with: "barcelona"
    click_on "filtros-button"
    select '60,000 €', from: 'search_max_price'
    # save_and_open_screenshot
    click_on "search-button-invalidated"
    save_and_open_screenshot
    assert_text "No results for given keywords or parameters"
  end
end
