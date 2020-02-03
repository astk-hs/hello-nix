this can be built with;   
cabal new-run helloWorld   
but it fails with nix, complaining about something to do with a tarball...   
nix-build -A Hello    
works, but   
nix-build -A World   
fails...   
despite these seeming identicle..    
