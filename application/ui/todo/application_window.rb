module Todo
  class ApplicationWindow < Gtk::ApplicationWindow
    # Register the class in the GLib world
    type_register

    class << self
      def init
        # Set the tempelate from the resources binary
        set_template resource: '/com/iridakos/gtk-todo/ui/application_window.ui'
        
        bind_template_child 'add_new_item_button'
      end 
    end

    def initialize(application)
      super application: application

      set_title 'GTK+ Simple Todo'

      add_new_item_button.signal_connect 'clicked' do |button, application|
        puts "OMG! I am Clicked."
      end
    end
  end
end

