module AjaxErrorRender
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def copy_ajax_error_render_file
      copy_file "error.js.erb", "app/views/errors/error.js.erb"
      copy_file "_error.html.erb", "app/views/errors/_error.html.erb"
    end
  end
end
