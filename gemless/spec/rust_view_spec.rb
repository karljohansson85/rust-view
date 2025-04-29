# frozen_string_literal: true

require "spec_helper"

RSpec.describe RustView do
  before(:all) do
    puts "Process pid: #{Process.pid}"
  end

  it "does something useful" do
    expect(RustView.new.to_s).to eq(
      String.new("Hello from Rust!", encoding: Encoding::ASCII_8BIT),
    )
  end

  xit "leaks memory" do
    loop do
      RustView.new.to_s
    end
  end
end
