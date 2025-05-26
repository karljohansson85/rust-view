require "application_system_test_case"

class RenderersTest < ApplicationSystemTestCase
  test "visiting the index with a name" do
    visit root_path(params: { name: "Kalle" })

    assert_text "Hello from Rust!"
    # assert_selector "h1", text: "Hello Kalle"
  end

  test "visiting the index without a name" do
    visit root_path

    assert_text "Hello from Rust!"
    # assert_selector "h1", text: "Hello John Doe"
  end
end
