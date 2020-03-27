# posh-challenge

PowerShell coding challenge. We will be using this repository to build on our knowledge of all things software engineering. 

## Setup

See the [Setup](./docs/Setup.md) document in this repo for a list of things to download and install. 

## Up and Running

To import a PowerShell module locally: 

```posh
# from the repo root:
Import-Module ./src/FileIndexModule/FileIndexModule.psd1 -Force
Invoke-FileIndex

# outputs
~> Import-Module ./src/FileIndexModule/FileIndexModule.psd1 -Force
C:\_source\git_personal\nhudacin\posh-challenge [master ≡ +3 ~1 -0 !]
~> Invoke-FileIndex
Hello. This will be a file index operation
```

## Goal

We'll be writing a module that indexes a large file directory. Using that module, we'll be able to compare directory contents to pickup on any file differences. This is a pretty common scenario when deploying software. You have a source directory, probably containing some updates and new features that you'll need to deploy file differences over to many (sometimes thousands) of servers. 

We'll start out simple, with the ["small_directory"](./test/fixtures/small_directory) files in this repo. Then we'll move on to indexing much larger directories and you'll see if you can write higher-efficient code than me!

Remember - this is real world, I'm working on this exact same problem right now! My current record is indexing around 1 GB of data/ 22 thousand files in 12 seconds.

Along the way, you'll also pickup some must-have skills for: 

* Testing code. Can't ship (deliver) code if you don't know it works
* Source control. Can't store code without it. This is Git & GitHub. You'll be able to tell me the differences soon enough. 
* Pipelines. The lifeblood of software - The ability to automatically check new incoming code for breakages. 

## Assignment #1

1. "Fork" this repository in GitHub to your account. 
2. "Clone" your forked repository down to you local machine
3. Open up the repository in VSCode and start hacking!

For us to move on, I need you to make it so that "Invoke-FileIndex" accepts a "$Path" parameter and returns an array of objects, containing the "RelativePath" to that object (using the $Path as the parent) and the MD5 Hash of each file. 

This is NOT school - I ENCOURAGE you to google around.

Answer:

```posh
RelativePath                                                                                         Hash
------------                                                                                         ----
Document With Spaces.txt                                                                             59A63A02C48730788722379ADA722D43
child_folder\FileManagement.pdf                                                                      ECDB91316834249507378028B28F8671
child_folder\SplitStringFunction.sql                                                                 6DC13A7C86205F92CCBC5054F26312A9
child_folder\another_child\Big_Smooth.JPG                                                            F99A14BD3DDD5553B156BD1F520AAC2D
child_folder\another_child\nickhudacin.profilepic.2016.jpg                                           824E32F37B6231C9EA190CD598EB27D0
```
