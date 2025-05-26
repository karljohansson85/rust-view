require_relative "../../rust-view/lib/rust_view/rust_view"

class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def root
    name = params.fetch(:name, "John Doe")

    render rust_view: "hello"
  end
end
