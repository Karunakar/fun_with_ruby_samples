puts "checking the $: & unshift"
puts $:
$:.unshift("adding_a_path_to_ruby-load_paths")
puts $:
  
