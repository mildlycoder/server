#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Raw_javascript < BeEF::Core::Command
  def self.options
    [
      { 'name' => 'cmd', 'description' => 'Javascript Code', 'ui_label' => 'Javascript Code', 'value' => "alert(\'BeEF Raw Javascript\');\nreturn \'It worked!\';",
        'type' => 'textarea', 'width' => '400px', 'height' => '100px' }
    ]
  end

  #
  # This method is being called when a zombie sends some
  # data back to the framework.
  #
  def post_execute
    save({ 'result' => @datastore['result'] })
  end
end
