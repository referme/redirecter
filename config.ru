require 'erb'

location = 'http:///hello.refer.me'
message = "<html><body>Hello, thanks for visiting refer.me. Right now we're going to redirect you to <a href=\"#{ERB::Util.h(location)}\"></a>. See you over there.</body></html>"

run lambda { |env| [302, { 'Content-Type' => 'text/html', 'Location' => location }, [message]] }
