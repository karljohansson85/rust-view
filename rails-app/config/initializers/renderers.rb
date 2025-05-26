require_relative "../../rust-view/lib/rust_view/rust_view"
# config/initializers/renderers.rb

ActionController::Renderers.add :rust_view do |object, options|
  RustView.new.to_s

  # For example, assume this is a decorator or presenter object
  # @custom = object

  # self.content_type ||= Mime[:html]
  # self.response_body = ApplicationController.renderer.render(
  #   template: options[:template] || 'shared/custom_template',
  #   assigns: { custom: @custom }
  # )
end
