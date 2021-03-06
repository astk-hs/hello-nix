# hello-nix    
here we will install ubuntu linux on windows via WSL, and setup nixos,   
then a simple hello world will be compiled within nix.   
   
these instructions are compiled from;   
https://nathan.gs/2019/04/12/nix-on-windows/   
and   
https://github.com/Gabriel439/haskell-nix   
   
<!--full instructions from these links are pasted into the installing.foo.tex files in *this* git repo.-->
the composite instrunctions are;   
   
Open PowerShell as Administrator and run:   
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux   
   
install Ubuntu 18.04 LTS in the windows store from;   
https://www.microsoft.com/store/apps/9N9TNGVNDL3Q   
   
after being prompted for a username and pwd after initial setup   
from launching the installed ubuntu from the windows store, type;   
   
$ sudo apt update && sudo apt upgrade   
$ mkdir -p /etc/nix   
$ cd /etc/nix   
$ sudo vi /etc/nix/nix.conf   
   
paste the following into this nix.conf file;   
   
sandbox = false   
use-sqlite-wal = false   
   
press ESC and type :x to save and quit vi   
   
$ curl https://nixos.org/nix/install | sh   
$ nix-env --install cabal2nix   
$ nix-env --install nix-prefetch-git   
$ nix-env --install cabal-install   
$ cabal update    

----------------------------------   
ok, so now we are ready to try and use nix to build a haskell project.   
in order to ensure we can use all the build tools we might need from cabal,   
we should select a haskell project that is just built using cabal,   
and that makes use of several .cabal files combined together using a cabal.project file.   

to start with, a regular cabal file should be used to compile a haskell project,   
which is found in the directory hello-world, which prints hello-world to the screen. 

next, in the hello-project directory, a cabal.project file is used to combine two .cabal files    
these two libries are then combined to print "hello world" to the screen.

finally, a demonstration of uploading this to an Amazon Web Server (AWS) is given using the nix-copy-closure command in hello-aws.

