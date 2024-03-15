#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
# // phonegap_plugin_detection

class Phonegap_plugin_detection < BeEF::Core::Command
  def post_execute
    content = {}
    content['Result'] = @datastore['result']
    save content
  end
end
