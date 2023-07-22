# Daily Commit Script

![Auto Commit](https://img.shields.io/badge/Auto%20Commit-Daily-brightgreen)

This is a simple Batch script that automatically updates itself and performs a daily commit to a specified GitHub repository. The script will clone or pull the latest version of the script from the repository, replace the current script with the updated version, and commit and push changes to the GitHub repository every minute.

## Getting Started

To use this script, follow the steps below:

1. Clone this repository to your local machine.

```bash
git clone https://github.com/fragenabhishek/Daily-Commit.git
Open the script.bat file in a text editor.

Set the path to your Git repository by modifying the repo_path variable. Replace 'your_username' with your GitHub username and provide the correct path to your repository.

batch
Copy code
REM Set the path to your Git repository
set "repo_path=C:\Users\your_username\Documents\YourRepo"
Set the commit message for each auto-commit by modifying the commit_message variable. You can customize the commit message to your preference.
batch
Copy code
REM Set the commit message for each auto-commit
set "commit_message=Daily auto-commit"
How It Works
The script works by checking for updates in the GitHub repository every minute. If updates are available, it clones or pulls the latest version of the script from the repository. Then, it replaces the current script with the updated version. After that, it changes to the specified Git repository directory and performs a commit with the provided commit message. Finally, it pushes the changes to the main branch of the GitHub repository.

Usage
Run the script.bat file using the Command Prompt or any terminal on your system.

The script will start running, and it will automatically update itself and perform a daily commit to the specified GitHub repository every minute.

Note
Please ensure that you have Git installed and properly configured on your system before using this script. Additionally, make sure that you have the necessary permissions to access and push changes to the specified GitHub repository.

Disclaimer: Auto-committing frequently can lead to unnecessary commits and may not be suitable for all projects. Use this script with caution and only in situations where frequent commits are desired or required.

Feel free to modify and customize the script as needed for your specific use case. Happy coding!

License
This project is licensed under the MIT License - see the LICENSE file for details.
