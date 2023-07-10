def autoload_files
  Dir.glob(File.expand_path('rook/**/*.rb', __dir__)).each do |file|
    require_relative file
  end
end

autoload_files
