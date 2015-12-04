require 'rspec/visual/configuration'
module ScreenshotHelper
  def take_screenshot(page, example, options = {})
  	if options.empty?
      options = {full: true}
    end
    file_path = File.join(Rspec::Visual::Configuration.screenshot_folder, "#{example.description}.png")
    page.save_screenshot(file_path, options)
  end
end
