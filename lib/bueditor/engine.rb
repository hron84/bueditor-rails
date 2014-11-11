require 'rails'
require 'bueditor'

module Bueditor
  class Engine < ::Rails::Engine
    isolate_namespace Bueditor
    
    initializer "bueditor.assets_precompile", :group => :all do |app|
      app.config.assets.precompile += Bueditor.assets
    end

    initializer 'bueditor.hooks' do
      if Object.const_defined?('Formtastic')
        require 'bueditor/adapter/formtastic'
      end
    end
  end
end
