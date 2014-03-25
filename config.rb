# Page options, layouts, aliases and proxies
# -------------------------------------------------------------------

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

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

activate :livereload
activate :directory_indexes
activate :automatic_image_sizes
activate :syntax # code highlighting

set :css_dir, 'assets/scss'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :fonts_dir, 'assets/fonts'

set :data_dir, 'source/data'
#set :partials_dir, '_partials'
set :layouts_dir,  '_layouts'
set :helpers_dir, 'helpers'

# gh-pages relative path
activate :relative_assets
#set :relative_links, true

# Markdown settings
set :markdown

# Bower support for Sprockets
after_configuration do
  sprockets.append_path File.join "#{root}", 'source/assets/_vendor'
end

# Ignore files/paths
ignore '.idea/*'

# Custom helpers
# Methods defined in the helpers block are available in templates
helpers do

  # Sample
  # def some_helper
  #   "Helping"
  # end

end # / helpers do

# -------------------------------------------------------------------
# Build-specific config
# -------------------------------------------------------------------

configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :cache_buster
  activate :asset_hash

  # Favicon generator
  # https://github.com/follmann/middleman-favicon-maker
=begin
  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source/assets/img')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      "favicon.ico" => [
        { icon: "favicon.ico", size: "32x32,16x16" },
      ]
    }
  end
=end
  # Alt image path
  # set :http_prefix, "/Content/images/"
end
