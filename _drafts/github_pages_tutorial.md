
## (Mac) Install a few utilities
 
Make sure you have everything you need first. 
 
1. Check to see if you have Rubygems, which is a package manager for Ruby. Open your Terminal (press **Cmd + spacebar** and type **Terminal** to find it.) Then type `which gem`. If you see a version in the response, you're good.
2. If you don't already Rubygems, install it. See [https://rubygems.org/pages/download](https://rubygems.org/pages/download) for details.
3. If you don't have Jekyll installed, install it by typing `gem install jekyll` in the same terminal.
4. Install [Bundler](http://bundler.io/) by typing `gem install bundler`. 

## Set up the theme
1. Browse to the directory where you downloaded the Aviator theme. (Use `pwd` to see your present working directory, `cd` to change directories, `../` to go up one directory, and `ls` to list the contents of your current directory.)
2. Type `bundle init`. 
3. Type `open gemfile`.
4. Add the following in the gemfile (replacing the existing contents):

```
source 'https://rubygems.org'
gem 'github-pages'
```

5. Run `bundle install`.



5. Inside the directory, type `jekyll serve`.
6. Copy the preview URL to view the theme: `http://127.0.0.1:4000/`. Go to this path in your browser. You should see the theme.

<a href=""><img src="{{ "/publishingapidocs/aviatortheme.png" | prepend: site.baseurl }}" alt="Aviator theme default" /></a>


If you're on a Mac, Jekyll will auto-rebuild the site. If your YML syntax is valid, you should see the new endpoint in the documentation.

<a href=""><img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/publishingapidocs/aviatorthemesurfreport.png" | prepend: site.baseurl }}" alt="Surfreport endpoint added to Aviator theme" /></a>

## Build the site in Github Pages

If you're on a Windows machine and you don't have Jekyll installed, you can also build this site through Github Pages.

{{note}} You'll need git to follow these instructions. You can download and install [Git for Windows here](https://git-scm.com/download/win) and [Git for Mac here](https://git-scm.com/download/mac). If you're on a Mac, chances are you might already have git installed. You can check by opening up a terminal and typing `which git`.{{end}}
 
1. Go to [Github.com](http://github.com) and sign up for an account.
2. Click the **+** button in the upper-right corner and select **New repository**.
3. Name the repository something like **aviatortheme**.
4. Type a description (e.g., "test theme for REST API doc"). 
5. Select the **Initialize this repository with a README** check box.
6. For the "Add a license," select **MIT**.
7. Leave the other options at the defaults and click **Create repository**.
8. Click the **Settings** button. 

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/publishingapidocs/githubreposettings.png" | prepend: site.baseurl }}" alt="Github repo settings" />
9. Go to your repository's home page, and click the branch drop-down menu. 
10. Create a new branch called **gh-pages**.

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/publishingapidocs/ghpages.png" | prepend: site.baseurl }}" alt="Creating a Github Pages branch" />

11. Click **Settings** and change the default branch to **gh-pages**.

11. Go back to your repository's homepage. With the gh-pages branch selected, copy the **https clone url**:

<img src="{{ "https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/publishingapidocs/cloneurl.png" | prepend: site.baseurl }}" alt="clone URL" />

12. Open a terminal, browse to a convenient location, and type `git clone https://github.com/tomjoht/aviatortheme.git`, replacing the `https://github.com/tomjoht/aviatortheme.git` with your repository's https clone URL that you copied.

13. Move the jekyll theme files into this new folder that you just created during the previous step.
14. Open the _config.yml file and add the following:

```
url: tomjoht.github.io
baseurl: /avaiatortheme
```

Change the url to your github account name, and the baseurl to your repo name. 

15. Add the github pages gem. In terminal, type `bundle init`. 
16. Type `open gemfile`. 
17. Paste in the following:



14. Add the new jekyll files to git: `git add --all`.
15. Commit the files: `git commit -m "committing my jekyll theme"`.
16. Push the files up to your github repo: `git push`.

Github Pages will now automatically build your site. Wait a minute or two, and then visit 

tomjoht.github.io/aviatortheme

