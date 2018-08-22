
# Git can get real serious out in the real world. So here are some suggestions to help you practice git more carefully and more professionally.

# *Write better commit messages*

# Start following some of the advice here: https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message

# Writing informative and interesting git commit messages is valuable because they provide you one more opportunity to think about your work and they are searchable and give future codebase workers a path to follow.

# Here's how you can search your git history: `git log --grep="s3"`

# *git add -p*

# People seem to sometimes take offense at this suggestion but I stand by it and it has served me very well. Never use `git add .`, or `git add -A`, or `git add --all` unless maybe you are commiting the code initialized by a code generator, like Rails...and then only after creating your `.gitignore`. Instead use `git add -p` to choose exactly what you want to stage for every commit.

# There are several advantages to using `git add -p`:

#  • one more chance for you to review exactly what you are going to commit
#  • know exactly what's in your commit so you can write better commit messages
#  • reveals whitespace errors so they can be removed before committing
#  • pick and choose the changes you want to commit to make commits more granular
#  • save yourself from disaster

# *exclude files from output*

# To exclude files from the output of your git commands, like your module bundles or csv files for example, separate your exclusion pattern from your command parameters with the double dash `--` and use git's exclude pathspec alias `^`.

# `git diff -- ':^*.csv'`