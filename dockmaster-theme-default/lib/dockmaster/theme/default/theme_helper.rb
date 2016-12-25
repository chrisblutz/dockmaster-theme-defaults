module Dockmaster
  module Theme
    # This class represents the helper
    # class that will be passed to ERB
    # templates
    class ThemeHelper
      def initialize(master_store, store)
        @master_store = master_store
        @store = store
      end

      def erb_binding
        binding
      end

      def format_rb_string(rb_string)
        parts = rb_string.split('::')
        str = ''
        (0..parts.length - 1).each do |i|
          str += parts[i]
          str += '&thinsp;<strong>::</strong>&thinsp;' if i < parts.length - 1
        end
        str
      end

      def site_logo
        site_logo = Dockmaster::CONFIG[:site_logo]
        File.basename(site_logo)
      end
    end
  end
end
