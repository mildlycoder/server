#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#

module BeEF
  module API
    module Extension
      attr_reader :full_name, :short_name, :description

      @full_name = ''
      @short_name = ''
      @description = ''
    end
  end
end
