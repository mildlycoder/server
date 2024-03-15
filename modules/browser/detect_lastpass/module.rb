#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Detect_lastpass < BeEF::Core::Command
  def post_execute
    content = {}
    content['lastpass'] = @datastore['lastpass'] unless @datastore['lastpass'].nil?
    save content
  end
end
