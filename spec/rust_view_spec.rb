# frozen_string_literal: true

require "spec_helper"

RSpec.describe RustView do
  include RustView

  it "has a version number" do
    expect(RustView::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(hello).to eq(
      String.new("Hello from C", encoding: Encoding::ASCII_8BIT),
    )
  end
end
