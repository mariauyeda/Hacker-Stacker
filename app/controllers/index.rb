# Redirect root to our real landing page
get '/' do
	redirect '/questions'
end