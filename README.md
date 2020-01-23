The B-R-S 

This is my first script I'm sharing on Github. Please pitch in and give advices as I'd like to make this more complex and intuitive :)
After a few failures and successes, I have completed the bash script. Please find it at the end of this page. Follow the below steps: 

1st Step – Before doing anything, you have to define where you will be storing the script on your computer (Mac or Linux). Ideally, you would want to store it in your root/home folder. You can create a sub-folder called scripts and store it there. In your terminal, type cd ~ to get to your root/home folder. Then type mkdir scripts, this will create the scripts folder. 

2nd Step – Now copy the code at the bottom of this page and then open a text editor of your choice (Notepad++, Sublime Text, Visual Code, TextWrangler, etc), paste it in and then save it as bot-repo-script.sh. The .sh is the file extension for shell scripts. Make sure to save the file in the directory we just created above, which is root/home/scripts. 

3rd Step – Now let’s get to the fun part. Navigate to that folder in your terminal. 
Type ls -ll in the terminal to check that the script is there. If it Is not, you might be in the wrong directory or Step 2 was not successfully completed. 

4th Step – Now, we will make the shell script executable. To do so, type the following in the terminal: chmod +x bot-repo-script.sh This will make your script executable. To see the difference type ls -ll. You will find that there is an additional permission that was added, which is the executable. 

5th Step – This section is optional but I recommend you do it. Create a project folder and make a sub-folder where you will host your specific project. 
You can head back to your home folder, root/home and then type this command: mkdir Projects; cd Projects; mkdir myproject1

This will create a folder called Projects and then a sub-folder called myproject1. 
In that same directory, type pwd to get the full path. Copy that as you will need it when you run the bot-script later on. It should look like: /Users/jojo/Projects/myproject1

6th Step – Now let’s run this script! In your terminal, type ~/home/scripts/bot-repo-script.sh

You will be guided by the Bot-script through some input: 

1 - This is where the bot will ask you to name your repository. Make sure to use a single word or separate the name using hyphens. 

It will then ask you for a brief description. No worries, you can use spaces here. 

2 - The bot will ask you to enter the local folder path for your repository. This is the directory you’ve previously created; /Users/jojo/Projects/myproject1. You can hit enter to leave it empty if you have not created any. It will default to where the script is located. 

3 – It will now ask you for your Github username. 

4 - 
