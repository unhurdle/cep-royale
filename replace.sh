#!/bin/bash

find . -name "*" -type f -exec perl -i -ne 's/org\.apache\.flex/org\.apache\.royale/g;print;' {} \;
find . -name "*" -type f -exec perl -i -ne 's/\@royaleignorecoercion/\@royaleignorecoercion/g;print;' {} \;
find . -name "*" -type f -exec perl -i -ne 's/IRoyaleEvent/IRoyaleEvent/g;print;' {} \;
find . -name "*" -type f -exec perl -i -ne 's/ns\.apache\.org\/flexjs/ns\.apache\.org\/royale/g;print;' {} \;
find . -name "*" -type f -exec perl -i -ne 's/ROYALE_HOME/ROYALE_HOME/g;print;' {} \;
find . -name "*" -type f -exec perl -i -ne 's/royale-config/royale-config/g;print;' {} \;
find . -name "asconfig.json" -type f -exec perl -i -ne 's/flexjs/royale/g;print;' {} \;
find . -name "asconfig.json" -type f -exec perl -i -ne 's/"config":\s?"flex"/"config": "royale"/g;print;' {} \;
find . -name "asconfig.json" -type f -exec perl -i -ne 's/JSFlex/JSRoyale/g;print;' {} \;
find . -name "tasks.json" -type f -exec perl -i -ne 's/--flexHome/--royaleHome/g;print;' {} \;
