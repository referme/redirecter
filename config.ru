require 'erb'

location = 'http://www.refer.me'
message = "<html><body>Hi, thanks for visiting refer.me. Right now we're going to redirect you to <a href=\"#{ERB::Util.h(location)}\"></a>. See you over there.</body></html>"

run lambda { |env| [302, { 'Content-Type' => 'text/html', 'Location' => location }, [message]] }
