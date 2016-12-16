require "middleman-core"

Middleman::Extensions.register :middleman_file_explorer do
  require "middleman-file_explorer/extension"
  FileExplorer
end
