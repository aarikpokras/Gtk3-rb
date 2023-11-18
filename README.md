# Gtk3-rb
Gtk3-rb is a CLI tool that's kind of like zenity.

It can display GTK+ 3 dialogs in three different styles - An info box, a single-field form, and a two-field form. (I'm still working on it)

## Requirements/Installation
Gtk3-rb requires **ruby**, **gtk3**, and a GTK-compatible desktop environment.

`gem` also must be installed, but that usually comes with Ruby.

Install Ruby:

Arch Linux:
```console
sudo pacman -Syu ruby
```
Debian/Ubuntu:
```console
sudo apt install ruby
```
Yum:
```console
sudo yum install ruby
```


Install required gems:
```console
rake
```
**If the installation process fails, just try again.**
Install Gtk3rb:
```console
sudo rake install
```
You should then be able to run `gtk3rb-info` and others.
