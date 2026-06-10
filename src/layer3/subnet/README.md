opp_run -u Qtenv \
  -n $HOME/workspace/netsim/inet/src:$HOME/workspace/netsim/src/layer3/ \
  -l $HOME/workspace/netsim/inet/out/clang-release/src/libINET.dylib \
  -c subnet-direct \
  -f subnet.ini

opp_run -u Qtenv \
  -n $HOME/workspace/netsim/inet/src:$HOME/workspace/netsim/src/layer3/ \
  -l $HOME/workspace/netsim/inet/out/clang-release/src/libINET.dylib \
  -c subnet-indirect \
  -f subnet.ini