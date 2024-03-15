#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
module BeEF
  module Extension
    module AdminUI
      module Controllers
        class Panel < BeEF::Extension::AdminUI::HttpController
          def initialize
            super({
              'paths' => {
                '/' => method(:index)
              }
            })
          end

          # default index page
          def index
            @headers['X-Frame-Options'] = 'sameorigin'
          end
        end
      end
    end
  end
end
