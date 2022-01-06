require "ajax_error_render/version"
require "ajax_error_render/railtie"

module AjaxErrorRender
  def render_ajax_error(model)
    @model = model
    render 'errors/error'
  end
end
