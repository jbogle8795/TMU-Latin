#!/bin/bash

#create html for Latin-2 Assignments
asciidoctor /home/joshua/github-repos/Master-Files/Latin-2/adoc-Files-Assignments/*.adoc
#create html for Latin-2 Weekly-Files
asciidoctor /home/joshua/github-repos/Master-Files/Latin-2/adoc-Files-Weekly/*.adoc

#create html for TMU-Latin Assignments
asciidoctor /home/joshua/github-repos/Master-Files/TMU-Latin/adoc-Files-Assignments/*.adoc
#create html for TMU-Latin Weekly-Files
asciidoctor /home/joshua/github-repos/Master-Files/TMU-Latin/adoc-Files-Weekly/*.adoc

#create html for Hebrew-1 Assignments
asciidoctor /home/joshua/github-repos/Master-Files/Hebrew-1/adoc-Files-Assignments/*.adoc
#create html for Hebrew-1 Weekly-Files
asciidoctor /home/joshua/github-repos/Master-Files/Hebrew-1/adoc-Files-Weekly/*.adoc

#Move html to Hebrew-1 Assignments
mv /home/joshua/github-repos/Master-Files/Latin-2/adoc-Files-Assignments/*.html /home/joshua/github-repos/Latin-2/Assignments/
#Move html to Hebrew-1 Weekly-Files
mv /home/joshua/github-repos/Master-Files/Latin-2/adoc-Files-Weekly/*.html /home/joshua/github-repos/Latin-2/Weekly-Overviews/

#Move html to Hebrew-1 Assignments
mv /home/joshua/github-repos/Master-Files/TMU-Latin/adoc-Files-Assignments/*.html /home/joshua/github-repos/TMU-Latin/Assignments/
#Move html to Hebrew-1 Weekly-Files
mv /home/joshua/github-repos/Master-Files/TMU-Latin/adoc-Files-Weekly/*.html /home/joshua/github-repos/TMU-Latin/Weekly-Overviews/

#Move html to Hebrew-1 Assignments
mv /home/joshua/github-repos/Master-Files/Hebrew-1/adoc-Files-Assignments/*.html /home/joshua/github-repos/Hebrew-1/Assignments/
#Move html to Hebrew-1 Weekly-Files
mv /home/joshua/github-repos/Master-Files/Hebrew-1/adoc-Files-Weekly/*.html /home/joshua/github-repos/Hebrew-1/Weekly-Overviews/

#Push Master-Files to git-hub
export GIT_DIR=/home/joshua/github-repos/Master-Files/.git
git add *
git commit -m 'update of html'
git push origin main

#Push Latin-2 to git-hub
export GIT_DIR=/home/joshua/github-repos/Latin-2/.git
git add *
git commit -m 'update of html'
git push origin main

#Push TMU-Latin to git-hub
export GIT_DIR=/home/joshua/github-repos/TMU-Latin/.git
git add *
git commit -m 'update of html'
git push origin main

#Push Hebrew-1 to git-hub
export GIT_DIR=/home/joshua/github-repos/Hebrew-1/.git
git add *
git commit -m 'update of html'
git push origin main