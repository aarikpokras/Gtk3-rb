#!/usr/bin/ruby
require 'gtk3'

title = ARGV.first
textL = ARGV[1]
butto = ARGV[2]

if ARGV.first.nil? || ARGV.first.empty?
  print "Please follow the usage:\n	\e[1;39mgtk3rb-entry\e[0m [TITLE] [LABEL] [BUTTON]\n"
  exit 1
else

def entry (gtk_title, gtk_label, gtk_button)
  app = Gtk::Application.new 'com.aarikpokras.gtk3rb', :flags_none

  app.signal_connect :activate do |application|
    window = Gtk::ApplicationWindow.new(application)
    window.set_border_width(12)
    window.set_title "#{gtk_title}"
    label = Gtk::Label.new("#{gtk_label}")
    entry = Gtk::Entry.new
    button = Gtk::Button.new(label: "#{gtk_button}")
    button.signal_connect('clicked') do
      ui = entry.text
      puts "#{ui}"
      window.destroy
    end
    grid = Gtk::Grid.new
    grid.attach(label, 0, 0, 1, 1)
    grid.attach(entry, 1, 0, 2, 1)
    grid.attach(button, 0, 1, 3, 1)

    window.add(grid)
    window.show_all
  end

  puts app.run
end

entry title, textL, butto
end
