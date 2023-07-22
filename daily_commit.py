import os
import subprocess
import datetime

def daily_commit():
    repo_path = "/c/Users/abhishs19/Documents/Next/Daily-Commit"  # Replace with the path to your local repository
    commit_message = f"Daily auto commit - {datetime.date.today()}"
    
    try:
        # Change directory to the repository
        os.chdir(repo_path)
        
        # Stage all changes
        subprocess.call(['git', 'add', '-A'])
        
        # Commit the changes with the current date as the commit message
        subprocess.call(['git', 'commit', '-m', commit_message])
        
        # Push the changes to the remote repository
        subprocess.call(['git', 'push'])
        
        print("Daily commit successful.")
    except Exception as e:
        print(f"Error occurred: {e}")

if __name__ == "__main__":
    daily_commit()

