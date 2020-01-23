The BRS - Bot Repo Script
------------

#### Instructions

This is my first script I'm sharing on Github. Please pitch in and give advices as I'd like to make this more complex and intuitive :)
After a few failures and successes, I have completed the bash script. Please find it at the end of this page. Follow the below steps: 

**1st Step** – Before doing anything, you have to define where you will be storing the script on your computer (Mac or Linux). Ideally, you would want to store it in your `root/home folder`. You can create a sub-folder called `scripts` and store it there. In your terminal, type `cd ~` to get to your `root/home` folder. Then type `mkdir scripts`, this will create the `scripts` folder. 

**2nd Step** – Now copy the code at the bottom of this page and then open a text editor of your choice (Notepad++, Sublime Text, Visual Code, TextWrangler, etc), paste it in and then save it as **bot-repo-script.sh**. The **.sh** is the file extension for shell scripts. Make sure to save the file in the directory we just created above, which is `root/home/scripts`. 

**3rd Step** – Now let’s get to the fun part. Navigate to that folder in your terminal. 
Type `ls -ll` in the terminal to check that the script is there. If it Is not, you might be in the wrong directory or Step 2 was not successfully completed. 

**4th Step** – Now, we will make the shell script executable. To do so, type the following in the terminal: `chmod +x bot-repo-script.sh` This will make your script executable. To see the difference type `ls -ll`. You will find that there is an additional permission that was added, which is the executable. 

**5th Step** – This section is optional but I recommend you do it. Create a project folder and make a sub-folder where you will host your specific project. 
You can head back to your home folder, `root/home` and then type this command: 

`mkdir Projects; cd Projects; mkdir myproject1`

This will create a folder called Projects and then a sub-folder called **myproject1**. 
In that same directory, type `pwd` to get the full path. Copy that as you will need it when you run the bot-script later on. It should look like: `/Users/jojo/Projects/myproject1`

**6th Step** – Now let’s run this script! In your terminal, type:

 `~/home/scripts/bot-repo-script.sh`

You will be guided by the Bot-script through some input: 

1 - This is where the bot will ask you to name your repository. Make sure to use a single word or separate the name using hyphens. 

It will then ask you for a brief description. No worries, you can use spaces here. 

2 - The bot will ask you to enter the local folder path for your repository. This is the directory you’ve previously created; /Users/jojo/Projects/myproject1. You can hit enter to leave it empty if you have not created any. It will default to where the script is located. 

3 – It will now ask you for your Github username.

4 – Now it will ask you for your password. In this section, you will be pasting the Token you had generated from Github. 

5 – After pasting the token, magic should have happened and your repo is now live. 
Copy the link provided in the final output and paste it in your browser. 

**Hooray!** You can now start working on your repo. 



The SCRIPT
----------

```js 

#!/bin/bash

#Create a Repo easily on Github from your Terminal.

#Do not forget to M=make this file executable by using the following command: chmod +x <<filename.sh>>

CURRENTDIR=${pwd}

#Step 0: Intro
echo "Hi" $USER", I am BRS, the Best Bot Repo Script :)"
echo "Let's get started"

#Step 1: Name of the remote repo. Enter a single word or separate using hyphens.
echo $USER", What's the name of your remote repo?"
read REPO_NAME

echo "Enter a brief description for your repo:"
read DESCRIPTION

#Step 2: Input the local folder path for your repository.
echo "What is the best path to your local project directory?"
echo "Don't panic if you don't have one, you can simply hit enter to leave it empty :)"
read PROJECT_PATH

#Step 3: Input your username.
echo "So, what's your Github username?"
read USERNAME

#Step 4: Go to the local project path if any.
cd "$PROJECT_PATH"


#Step 5: This will initialise the repo locally, create blank README, add and commit.
git init
touch README.MD
git add README.MD
git commit -m 'initial commit -setup with .sh script'


#Step 6: Use your API token to log in.
curl -u ${USERNAME} https://api.github.com/user/repos -d "{\"name\": \"${REPO_NAME}\", \"description\": \"${DESCRIPTION}\"}"

#Step 7: Add the remote github repo to your local repo and push.
git remote add origin https://github.com/${USERNAME}/${REPO_NAME}.git
git push --set-upstream origin master

#Step 8: This will change to your project's root directory.
cd "$PROJECT_PATH"

echo "And ... BOOM! Done. Go to https://github.com/$USERNAME/$REPO_NAME to see your new repo :D Enjoy your Coding." $USER 
echo " *** You're now in your project root. ***"

```
----------

`This was created by Johann Maiga`

**Thanks for checking it.**
