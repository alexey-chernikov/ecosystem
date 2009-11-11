#require "redgreen/autotest"
$KCODE = 'U'
module Autotest::GnomeNotify
  # Time notification will be displayed before disappearing automatically
  EXPIRATION_IN_SECONDS = 2
  ERROR_STOCK_ICON = "gtk-stop"
  SUCCESS_STOCK_ICON = "gtk-ok"

  # Convenience method to send an error notification message
  #
  # [stock_icon]   Stock icon name of icon to display
  # [title]        Notification message title
  # [message]      Core message for the notification
  def self.notify stock_icon, title, message
    options = "-t #{EXPIRATION_IN_SECONDS * 1000} -i #{stock_icon}"
    system "notify-send #{options} '#{title}' '#{message}'"
  end

  Autotest.add_hook :red do |at|
    # notify ERROR_STOCK_ICON, "Тесты не проходят", "#{at.files_to_test.size} тестов с <b>ошибками</b>\n#{at.results.to_a[4..99]}"
    example_text = ""
    num_examples = 0
    examples = at.files_to_test.each_pair do |key, values|
      example_text += "= #{key}\n" 
      values.each do |value|
        num_examples += 1
        example_text += "  * #{value}\n" 
      end
    end
    notify ERROR_STOCK_ICON, "#{num_examples} failed in #{at.files_to_test.size} files", "#{example_text}"
  end

  Autotest.add_hook :green do |at|
     notify SUCCESS_STOCK_ICON, "Все тесты прошли", "Отличная работа!"
  end
end
