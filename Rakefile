$:.unshift File.join(File.dirname(__FILE__), 'lib')

Dir.glob('lib/tasks/*.rake').each do |task|
  import task
end

task development: [:test]