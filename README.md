# a list of command steps to do:

cabal sandbox init # to make current folder a sandbox


cabal init # generate .cabal configration

# then modified the .cabal file, add dependcies (happstack-server) and main.sh

cabal install (happstack-server) # install happstack locally inside this sandbox

cabal build # build the executables

cabal repl # eval main function and open a repl
