Dir[File.join(File.dirname(__FILE__), '../page_objects/*_page.rb')].sort.each { |file| require file }

module Inmetrics
  class Pages
    def home
      @home ||= Inmetrics::Home::Home.new
    end
  end
end