#
# Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Sitekiosk_breakout < BeEF::Core::Command
  def pre_send
    # gets the value configured in the module configuration by the user
    @datastore.each do |input|
      @payload_handler = input['value'] if input['name'] == 'payload_handler'
    end
  end

  def self.options
    [
      { 'name' => 'payload_handler', 'ui_label' => 'Payload Handler', 'value' => 'http://10.10.10.10:8080/psh' }
    ]
  end

  def post_execute
    save({ 'result' => @datastore['result'] })
  end
end
