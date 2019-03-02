require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    fill_in "Customer name", with: @transaction.customer_name
    fill_in "Mobile number", with: @transaction.mobile_number
    fill_in "Price", with: @transaction.price
    fill_in "Product", with: @transaction.product_id
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Total amount", with: @transaction.total_amount
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    fill_in "Customer name", with: @transaction.customer_name
    fill_in "Mobile number", with: @transaction.mobile_number
    fill_in "Price", with: @transaction.price
    fill_in "Product", with: @transaction.product_id
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Total amount", with: @transaction.total_amount
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end
end
