###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload, grace_period: 0.5

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

###
# Gem
###
require 'slim'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

## enbale bare coffee-script
CoffeeScript.class_eval do
  class << self
    def compile_with_bare(*args)
      options = args.pop if args.last.is_a?(Hash)
      (options ||= {})[:bare] = true
      args << options
      compile_without_bare(*args)
    end

    alias_method :compile_without_bare, :compile
    alias_method :compile, :compile_with_bare
  end
end

activate :sync do |sync|
  sync.fog_provider  = 'AWS'
  sync.fog_directory = 'mh4sim.bloghackers.net'
  sync.fog_region    = 'ap-northeast-1'
  sync.aws_access_key_id     = ENV['AWS_ACCESS_KEY_ID']
  sync.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  sync.existing_remote_files = 'keep'
  sync.gzip_compression = false
  sync.after_build = false
end

