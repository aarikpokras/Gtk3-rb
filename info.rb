#!/usr/bin/ruby
require 'gtk3'

if ARGV.first.nil? || ARGV.first.empty?
  print "Please follow the usage:\n	\e[1;39m./info.rb\e[0m [TITLE] [TEXT]\n"
  exit 1
else

title = ARGV.first
text = ARGV[1]

def dinfo (gtk_title, gtk_text)
  app = Gtk::Application.new 'com.aarikpokras.gtk3rb', :flags_none

  app.signal_connect :activate do |application|
    window = Gtk::ApplicationWindow.new(application)
    window.set_title "#{gtk_title}"
    label = Gtk::Label.new("#{gtk_text}")
    button = Gtk::Button.new(label: 'Continue')
    button.signal_connect('clicked') do
      puts "0"
      window.destroy
    end
    grid = Gtk::Grid.new
    grid.attach(label, 0, 0, 1, 1)
    grid.attach(button, 0, 2, 1, 1)
    window.add(grid)
    window.show_all
  end
  puts app.run
end

#dinfo "title", "text"
dinfo title, text
end
