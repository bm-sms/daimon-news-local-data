class DaimonNews::BootstrapGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  desc 'Create resources to show daimon_news'
  def create_resources
    template 'controller.rb', "app/controllers/#{file_name}_controller.rb"
    copy_file 'views/index.html.erb', "app/views/#{file_name}/index.html.erb"
    copy_file 'views/show.html.erb', "app/views/#{file_name}/show.html.erb"

    inject_into_file 'config/routes.rb', after: 'Rails.application.routes.draw do' do
      "\n  resources :#{file_name}\n"
    end
  end
end
