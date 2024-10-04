# frozen_string_literal: true

string = ARGV.join
if !defined?(string).nil? && !string.nil? && !string.empty?
  string = string.gsub('/', '-')

  puts 'what type of work is this? (feature, fix, hotfix, task)'
  type = $stdin.gets.chomp
  string = "#{type}/#{string}".downcase unless type.nil?

  string = string.gsub("'", '')
  string = string.gsub('(', '')
  string = string.gsub(')', '')
  string = string.gsub('&', '')
  string = string.gsub(',', '')
  string = string.gsub('_', '-')
  string = string.gsub(' - ', '-')
  string = string.gsub(' ', '-')
  string = string.gsub(']', '')
  string = string.gsub('[', '')
  string = string.gsub(':', '')
  string = string.gsub(';', '')
  string = string.gsub('.', '')

  string = string.gsub('\\', '')
  string = string.gsub('’', '')
  string = string.gsub('“', '')
  string = string.gsub('”', '')
  string = string.gsub('|', '')
  string = string.gsub('?', '')
  string = string.gsub(/-{2,}/, '-')

  checkout_string = "git checkout -b #{string}"
  IO.popen('pbcopy', 'w') { |f| f << checkout_string }
  puts "successfully copied: #{checkout_string}"
else
  puts 'Error: pass in an argument after calling the script:'
  puts '$ ruby branch_namer.rb "my string here"'
end

# input: 156 My Feature Name Here
# output: git checkout -b feature/156-my-feature-name-here
