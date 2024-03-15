#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
module BeEF
  module API
    module Modules
      # @note Defined API Paths
      API_PATHS = {
        'post_soft_load' => :post_soft_load
      }.freeze

      # Fires just after all modules are soft loaded
      def post_soft_load; end
    end
  end
end
