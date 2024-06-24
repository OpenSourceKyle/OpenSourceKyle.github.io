# Open Ideas

My Open Ideas are collection of my writings. These are not meant to descriptive and absolute in my beliefs, BUT they are meant to be my thoughts written out. Writing out my thoughts has helped with my anxious, obsessive way of thinking. I note this because **these writings could be wrong or controversial** among many other thigns. My goal is to give myself a place to flesh out my thinking better instead of waiting for the thoughts to be perfect, which after nearly 30 years is not the case.

# Design

Jekyll will be used to generate a static website of the Markdown pages.

# Installation

https://jekyllrb.com/docs/installation/other-linux/#archlinux

https://jekyllrb.com/docs/#instructions

```shell
# Arch Linux
sudo pacman -S ruby base-devel

# Add Jekyll to $PATH
echo '
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/ruby/3.0.0/bin:$PATH
' >> ~/.zshrc

# Install Jekyll
gem install jekyll bundler

# Automatically rebuild website while editing
bundle exec jekyll serve --livereload
```

# Welcome Reference (for Jekyll)

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

Jekyll requires blog post files to be named according to the following format:

`YEAR-MONTH-DAY-title.MARKUP`

Where `YEAR` is a four-digit number, `MONTH` and `DAY` are both two-digit numbers, and `MARKUP` is the file extension representing the format used in the file. After that, include the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/