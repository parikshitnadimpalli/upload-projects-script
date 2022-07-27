# Linux shell script to auto create github repos
### A shell script for new programmers on linux to automatically upload their programs and create github repos

# HOW TO USE

## Requirements:
You need to have both git and github cli installed on your machine. Paste the following lines into your terminal:
(You may be prompted to enter your password)
(This is for debian-based distros and if you're using any other distro you should use the appropriate package manager instead of apt)
```
sudo apt install git
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
```

After this login to your github account using the following command:
```
gh auth login
```

## How to run:

Place all your programs in a folder with sub-folders for each program. For example: create a folder "cpp-projects" and create a folder inside it called "odd-or-even" for a program that checks whether a given number is odd or even (I recommend using kebab-case for folders).
Place the .sh file in the main folder (in the example "cpp-projects"). Open the terminal in that folder or cd into it. For example:
```
cd /home/user-name/cpp-projects/
```
Now run the following command:
```
./upload-projects.sh
```

If you're unable to upload because of access denial run the following command within the main folder:
```
chmod 775 ./*
```
### That's it! Have fun programming!
