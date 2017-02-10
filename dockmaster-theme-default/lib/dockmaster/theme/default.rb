$LOAD_PATH.unshift(File.dirname(File.realpath(__FILE__)) + '/../../lib')

require 'fileutils'

require 'sass'

module Dockmaster
  # This module represents a theme
  # for Dockmaster
  module Theme
    autoload :ThemeHelper, 'dockmaster/theme/default/theme_helper'

    module_function

    def gem_source
      File.expand_path(File.join(File.dirname(__FILE__), '../../../'))
    end

    def base_template
      'theme/base.html.erb'
    end

    def index_template
      'theme/index.html.erb'
    end

    def index_output(_)
      'index.html'
    end

    def module_template
      'theme/module.html.erb'
    end

    def module_output(store)
      "#{store.path}.html"
    end

    def class_template
      'theme/class.html.erb'
    end

    def class_output(store)
      "#{store.path}.html"
    end

    def includes_dir
      'theme/includes'
    end

    def misc_generation(_master_store, output)
      output.create_dir('css/')
      Dir.chdir(File.join(gem_source, 'theme/scss')) do
        sass_engine = Sass::Engine.new(IO.read('main.scss'), filename: 'main', load_paths: [''], syntax: :scss)
        File.open(output.relative_path('css/main.css'), 'w') { |f| f.write(sass_engine.render) }
      end

      output.create_dir('assets/')
      output.copy_file(Dockmaster::CONFIG[:site_logo], 'assets/')
    end
  end
end
