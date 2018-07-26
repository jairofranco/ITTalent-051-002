require "application_system_test_case"

class PublicServantsTest < ApplicationSystemTestCase
  setup do
    @public_servant = public_servants(:one)
  end

  test "visiting the index" do
    visit public_servants_url
    assert_selector "h1", text: "Public Servants"
  end

  test "creating a Public servant" do
    visit public_servants_url
    click_on "New Public Servant"

    fill_in "Age", with: @public_servant.age
    fill_in "Document", with: @public_servant.document
    fill_in "Name", with: @public_servant.name
    fill_in "Period", with: @public_servant.period
    fill_in "Position", with: @public_servant.position
    fill_in "Salary", with: @public_servant.salary
    click_on "Create Public servant"

    assert_text "Public servant was successfully created"
    click_on "Back"
  end

  test "updating a Public servant" do
    visit public_servants_url
    click_on "Edit", match: :first

    fill_in "Age", with: @public_servant.age
    fill_in "Document", with: @public_servant.document
    fill_in "Name", with: @public_servant.name
    fill_in "Period", with: @public_servant.period
    fill_in "Position", with: @public_servant.position
    fill_in "Salary", with: @public_servant.salary
    click_on "Update Public servant"

    assert_text "Public servant was successfully updated"
    click_on "Back"
  end

  test "destroying a Public servant" do
    visit public_servants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Public servant was successfully destroyed"
  end
end
