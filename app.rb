require 'rubygems'
require 'sinatra'
require 'erb'
require 'sinatra/asset_pipeline'

class App < Sinatra::Base
  register Sinatra::AssetPipeline

  # Include these files when precompiling assets
  set :assets_precompile, %w(app.js app.css *.png *.jpg *.svg *.eot *.ttf *.woff)

  # Logical path to your assets
  set :assets_prefix, 'assets'

  # Use another host for serving assets
  #set :asset_host, 'http://<id>.cloudfront.net'

  # Serve assets using this protocol
  #set :assets_protocol, :http

  # CSS minification
  set :assets_css_compressor, :sass

  # JavaScript minification
  set :assets_js_compressor, :uglifier


	set :public_folder, 'public'

	get '/' do
	  #File.read(File.join('public', 'index.html'))

		erb :index
	  # renders views/index.erb
	end
end
