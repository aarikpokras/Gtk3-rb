#!/usr/bin/ruby
require 'gtk3'

title=ARGV.first
labe1=ARGV[1]
labe2=ARGV[2]
butto=ARGV[3]

if ARGV.first.nil? || ARGV.first.empty?
  print "Please follow the usage:\n	\e[1;39m./twof.rb [TITLE] [LABEL 1] [LABEL 2] [BUTTON]\e[0m\n"
  exit 1
else

def entry (gtk_title, gtk_label1, gtk_label2, gtk_button)
  app=Gtk::Application.new 'com.aarikpokras.gtk3rb', :flags_none

  app.signal_connect :activate do |application|
    window=Gtk::ApplicationWindow.new(application)
    window.set_title "#{gtk_title}"
    label1=Gtk::Label.new("#{gtk_label1}")
    label2=Gtk::Label.new("#{gtk_label2}")
    entry1=Gtk::Entry.new
    entry2=Gtk::Entry.new
    button=Gtk::Button.new(label: "#{gtk_button}")
    button.signal_connect('clicked') do
      ent1=entry1.text
      ent2=entry2.text
      print "1:	#{ent1}\n2:	#{ent2}\n"
      window.destroy
    end
    grid=Gtk::Grid.new
    grid.attach(label1, 0, 0, 1, 1)
    grid.attach(entry1, 1, 0, 2, 1)
    grid.attach(label2, 0, 1, 1, 1)
    grid.attach(entry2, 1, 1, 2, 1)
    grid.attach(button, 0, 2, 3, 1)

    window.add(grid)
    window.show_all
  end
  puts app.run
end

entry title, labe1, labe2, butto
end
