#!/bin/bash

# Create a Repo easily on Github from your Terminal.

# Do not forget to make this file executable by using the following command: chmod +x <<filename.sh>>

CURRENTDIR=${pwd}

# Step 0: Intro
echo "Hi" $USER", I am BRS, the Best Bot Repo Script :)"
echo "Let's get started"

# Step 1: Name of the remote repo. Enter a single word or separate using hyphens.
echo $USER", What's the name of your remote repo?"
read REPO_NAME

echo "Enter a brief description for your repo:"
read DESCRIPTION

# Step 2: Input the local folder path for your repository.
echo "What is the best path to your local project directory?"
echo "Don't panic if you don't have one, you can simply hit enter to leave it empty :)"
read PROJECT_PATH

# Step 3: Input your username.
echo "So, what's your Github username?"
read USERNAME

# Step 4: Go to the local project path if any.
cd "$PROJECT_PATH"


# Step 5: This will initialise the repo locally, create blank README, add and commit.
git init
touch README.MD
git add README.MD
git commit -m 'initial commit -setup with .sh script'


# Step 6: Use your API token to log in.
curl -u ${USERNAME} https://api.github.com/user/repos -d "{\"name\": \"${REPO_NAME}\", \"description\": \"${DESCRIPTION}\"}"

# Step 7: Add the remote github repo to your local repo and push.
git remote add origin https://github.com/${USERNAME}/${REPO_NAME}.git
git push --set-upstream origin master

# Step 8: This will change to your project's root directory.
cd "$PROJECT_PATH"

echo "And ... BOOM! Done. Go to https://github.com/$USERNAME/$REPO_NAME to see your new repo :D Enjoy your Coding." $USER 
echo " *** You're now in your project root. ***"
