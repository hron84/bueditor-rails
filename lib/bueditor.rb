require 'pathname'

module Bueditor


  autoload :Utils, 'bueditor/utils'

  mattr_accessor :assets
  @@assets = nil

  mattr_accessor :root_path
  @@root_path = nil

  def self.root_path
    @root_path ||= Pathname.new(File.dirname(File.expand_path('../', __FILE__)))
  end


  def self.assets
    @@assets ||= Bueditor::Utils.select_assets('bueditor', 'vendor/assets/stylesheets') +
                 Bueditor::Utils.select_assets('bueditor', 'vendor/assets/javascripts') +
                 Bueditor::Utils.select_assets('bueditor', 'vendor/assets/images')
  end

  VERSION = File.read(Bueditor.root_path.join('VERSION')).strip
end
