module ToDo
  class Application < Gtk::Application
    def initialize
      super 'com.iridakos.gtk-todo', :flags_none

      signal_connect :activate do |application|
        window = Todo::ApplicationWindow.new(application)
        window.present
      end
    end
  end
end
