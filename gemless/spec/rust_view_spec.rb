# frozen_string_literal: true

require "spec_helper"

RSpec.describe RustView do
  include RustView

  it "does something useful" do
    expect(hello).to eq(
      String.new("Hello from Rust!", encoding: Encoding::ASCII_8BIT),
    )
  end
end
