require "application_system_test_case"

class BudgetsTest < ApplicationSystemTestCase
  setup do
    @budget = budgets(:one)
  end

  test "visiting the index" do
    visit budgets_url
    assert_selector "h1", text: "Budgets"
  end

  test "creating a Budget" do
    visit budgets_url
    click_on "New Budget"

    fill_in "Cities", with: @budget.cities_id
    fill_in "Education", with: @budget.education
    fill_in "Healt", with: @budget.healt
    fill_in "Infraestructure", with: @budget.infraestructure
    fill_in "Other", with: @budget.other
    fill_in "Security", with: @budget.security
    fill_in "Totalvalue", with: @budget.totalValue
    fill_in "Transport", with: @budget.transport
    click_on "Create Budget"

    assert_text "Budget was successfully created"
    click_on "Back"
  end

  test "updating a Budget" do
    visit budgets_url
    click_on "Edit", match: :first

    fill_in "Cities", with: @budget.cities_id
    fill_in "Education", with: @budget.education
    fill_in "Healt", with: @budget.healt
    fill_in "Infraestructure", with: @budget.infraestructure
    fill_in "Other", with: @budget.other
    fill_in "Security", with: @budget.security
    fill_in "Totalvalue", with: @budget.totalValue
    fill_in "Transport", with: @budget.transport
    click_on "Update Budget"

    assert_text "Budget was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget" do
    visit budgets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget was successfully destroyed"
  end
end
