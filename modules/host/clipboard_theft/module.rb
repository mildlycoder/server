#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Clipboard_theft < BeEF::Core::Command
  def post_execute
    content = {}
    content['clipboard'] = @datastore['clipboard']
    save content
  end
end
