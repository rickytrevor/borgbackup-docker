# borgbackup-docker

this repository, as the name suggests contains a Dockerized version of [BorgBackup]("https://www.borgbackup.org/")

# Why did I make this?

The answer is simple, I was messing around with AmazonLinux and I had some trouble installing it since the pip version there doesn't work and there isn't
a compatible version on the official repos and, since I also couldn't be bothered with compiling it from scratch I've decided to containerize it myself

# How does it work? 

To use the container simply run 
```
docker run -ti -v /the/dir/that/you/want/to/backup:/data -v ~/.ssh:/keys -e user="yourbackupuser" -e ip=yourserveripordomain -e name=nameofbackup -e backuprmt=/the/remote/backup/directory -e mode=client rickytrevor/borgbackup-docker:latest
```
there are other environment variables that you can customize to your hearth's content, to check what is available just read the Dockerfile's source code, it is only about 20 lines
