source "https://rubygems.org"

gem "jekyll", "~> 3.7"
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "github-pages"
  # Theme Req: https://github.com/mmistakes/minimal-mistakes/tree/master?tab=readme-ov-file#minimal-mistakes-jekyll-theme
  gem "jekyll-include-cache"
  gem "jekyll-paginate"
end
# Jekyll 3+ Bug: https://github.com/jekyll/jekyll/issues/8523#issuecomment-751409319
gem "webrick", "~> 1.8"

# Arch bug: https://www.adamsdesk.com/posts/jekyll-fix-cannot-load-such-file-json/
gem "json"

gem "faraday-retry"

# ===

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
