#!/bin/bash
NODE6=/Users/software/node/node-v6.13.1/bin
NODE10=/Users/software/node/node-v10.15.3/bin
case "$1" in
        "6")
                export NODE_HOME=$NODE6
                ;;
        "10")
                export NODE_HOME=$NODE10
                ;;
        *)
                echo "Unknown NODE version! Specify 6, or 10!"
                ;;
esac
export PATH=$NODE_HOME:$PATH
echo "Calling 'node -v' to output the currently used node version $PATH"
node -v