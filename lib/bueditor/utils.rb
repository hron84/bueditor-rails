module Bueditor
  module Utils
    class << self

      def select_assets(path, relative_path)
        relative_folder = Bueditor.root_path.join(relative_path)
        folder = relative_folder.join(path)
        extensions = '*.{js,css,png,gif,jpg}'
        File.directory?(folder) ? Dir.glob(folder.join('**/' + extensions)) : []
      end

    end
  end
end

