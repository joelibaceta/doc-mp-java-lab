module MarkdownEngine

  def get_hierarchy
    return Dir['source/data/documetation/**/*.*']
  end

end