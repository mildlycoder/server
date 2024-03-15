#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Test_beef_debug < BeEF::Core::Command
  def self.options
    [
      { 'name' => 'msg', 'description' => 'Debug Message', 'ui_label' => 'Debug Message', 'value' => 'Test string for beef.debug() function', 'type' => 'textarea',
        'width' => '400px', 'height' => '50px' }
    ]
  end

  def post_execute
    content = {}
    content['Result'] = @datastore['result']
    save content
  end
end
