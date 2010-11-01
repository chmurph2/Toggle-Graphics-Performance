desc "Compile scripts to .scpt files"
task :compile do
  puts "Compiling toggle_graphics_performance.applescript..."
  system "osacompile -o toggle_graphics_performance.scpt toggle_graphics_performance.applescript"
  puts "Done"
  puts
end

desc "Install the script to your scripts folder"
task :install => :compile do
  puts "Copying toggle_graphics_performance.scpt to your scripts folder"
  system "cp *.scpt ~/Library/Scripts"
  puts "Done"
end