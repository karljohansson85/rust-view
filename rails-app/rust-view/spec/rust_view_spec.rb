# frozen_string_literal: true

require "spec_helper"

RSpec.describe RustView do
  before(:all) do
    puts "Process pid: #{Process.pid}"
  end

  it "does something useful" do
    expect(RustView.new("bork").to_s).to eq(
      String.new("Hello from bork!", encoding: Encoding::ASCII_8BIT),
    )

    expect(RustView.new("FOO").to_s).to eq(
      String.new("Hello from FOO!", encoding: Encoding::ASCII_8BIT),
    )
  end

  xit "leaks memory" do
    loop do
      RustView.new("no leaks please").to_s
    end
  end
end
