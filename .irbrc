
dirs = ['deck', 'hand', 'calculators']

def autoload_files(directory)
  Dir.glob("./#{directory}/*.rb").each { |file| require file }
end

dirs.each { |directory| autoload_files(directory) }
