require 'rake/testtask'

def test_task(name)
  Rake::TestTask.new("test_#{name}") do |t|
    t.test_files = FileList["test/#{name}/*_test.rb"]
  end
end

test_task :unit

task test: [:test_unit]