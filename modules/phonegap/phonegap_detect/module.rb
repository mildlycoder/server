#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
# phonegap
#

class Phonegap_detect < BeEF::Core::Command
  def post_execute
    content = {}
    content['phonegap'] = @datastore['phonegap']
    save content
  end
end
