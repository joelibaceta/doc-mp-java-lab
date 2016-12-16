# Require core library
require 'middleman-core'

# Extension namespace
class FileExplorer < ::Middleman::Extension
  option :my_option, 'default', 'An example option'

  def initialize(app, options_hash={}, &block)
    # Call super to build options from the options_hash
    super

    # Require libraries only when activated
    # require 'necessary/library'

    # set up your extension
    # puts options.my_option
  end

  def after_configuration
    # Do something
  end

  # A Sitemap Manipulator
  # def manipulate_resource_list(resources)
  # end



  helpers do

    def make_a_file_hierarchy(path)
      Dir.glob("#{path}/**").map { |file|
        p file
        icon, title = (File.basename file).split("|")
        title =  title.split(".")[0]
        if (File.directory?(file))
          "<li><a><i class='fa #{icon}'></i><span>#{title.upcase}</span></a></li><ul>#{make_a_file_hierarchy(File.expand_path file)}</ul>"
        else
          "<li><a><i class='fa #{icon}'></i><span>#{title.upcase}</span></a></li>"
        end
      }.join
    end
  end

end
