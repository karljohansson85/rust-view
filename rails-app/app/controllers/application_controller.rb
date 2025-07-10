class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def root
    name = params.fetch(:name, "John Doe")

    render rust_view: { name: }
  end
end
