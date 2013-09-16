task :deps do
  `mvn clean package`
end

task test: :deps do
  $: << File.expand_path("../test", __FILE__)

  Dir.glob("test/**/*_test.rb").each do |file|
    require file
  end
end
