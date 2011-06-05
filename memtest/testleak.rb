module TestLeak
  def self::test
    require 'psych'
    require 'yaml'
    STDERR.puts "YAML yamler: #{YAML.name}"
    STDERR.puts "Psych version: #{Psych::VERSION}"
    s = (1..1000).to_a.to_yaml
    10.times do
      print "."
      STDOUT.flush
      YAML::load(s)
    end
    exit 0
  end
end
