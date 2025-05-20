require_relative "../../rust-view/lib/rust_view/rust_view"

class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def root
    render plain: RustView.new.to_s
  end
end
