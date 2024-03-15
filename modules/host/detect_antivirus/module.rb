#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#

class Detect_antivirus < BeEF::Core::Command
  def post_execute
    save({ 'Antivirus' => @datastore['antivirus'] })
  end
end
