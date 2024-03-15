#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#

class Detect_software < BeEF::Core::Command
  def post_execute
    content = {}
    content['installed_software'] = @datastore['installed_software'] unless @datastore['installed_software'].nil?
    content['installed_patches'] = @datastore['installed_patches'] unless @datastore['installed_patches'].nil?
    save content
  end
end
