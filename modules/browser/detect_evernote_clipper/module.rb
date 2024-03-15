#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Detect_evernote_clipper < BeEF::Core::Command
  def post_execute
    content = {}
    content['evernote_clipper'] = @datastore['evernote_clipper'] unless @datastore['evernote_clipper'].nil?
    save content
  end
end
