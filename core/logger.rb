#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#

#
# @note log to file
#
module BeEF
  class << self
    attr_writer :logger

    def logger
      @logger ||= Logger.new("#{$home_dir}/beef.log").tap do |log|
        log.progname = name
        log.level = Logger::WARN
      end
    end
  end
end
