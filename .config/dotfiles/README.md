My dotfiles

Using a bare repository manage dotfiles. See https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained.

Installing to a new computer:
(might need this) echo "~/projects/dotfiles.git" >> .gitignore

	git clone --bare https://github.com/DemoniWaari/dotfiles.git $HOME/projects/dotfiles.git
	alias dotfiles='/usr/bin/git --git-dir=$HOME/projects/dotfiles.md --work-tree=$HOME'
	dotfiles config --local status.showUntrackedFiles no
	dotfiles checkout

New files you wanna push?

Add remote first
	dotfiles remote add origin https://github.com/DemoniWaari/dotfiles.git
If you do not want to type in password all the time you can change it to ssh
	dotfiles remote set-url git@github.com:DemoniWaari/dotfiles.md
You need to add your public ssh key into github from the website. Then you can check it works via
	ssh -T git@github.com
And it should prompt you with your username.

Now you can push new stuff

	dotfiles add filename
	dotfiles commit -m "Commit message here"
	dotfiles push
