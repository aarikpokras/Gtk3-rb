task :default => [:build]

task :build do
  sh "chmod 755 info.rb entry.rb twof.rb"
  sh "bundle install"
  puts "Run `sudo rake install` to finish."
end

task :install do
  sh "mv ./entry.rb gtk3rb-entry"
  sh "mv ./info.rb  gtk3rb-info"
  sh "mv ./twof.rb  gtk3rb-twof"
  sh "cp ./gtk3rb-twof /usr/local/bin/"
  sh "cp ./gtk3rb-info /usr/local/bin/"
  sh "cp ./gtk3rb-entry /usr/local/bin/"
end
