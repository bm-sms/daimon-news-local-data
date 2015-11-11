class DaimonNews::BootstrapGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  desc 'Create resources to show daimon_news'
  def create_resources
    template 'controller.rb', "app/controllers/#{plural_name}_controller.rb"
    template 'views/index.html.erb', "app/views/#{plural_name}/index.html.erb"
    template 'views/show.html.erb', "app/views/#{plural_name}/show.html.erb"

    inject_into_file 'config/routes.rb', after: 'Rails.application.routes.draw do' do
      "\n  resources :#{plural_name}, only: %i(index show)\n"
    end
  end
end
