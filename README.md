Mod of submodules of mods used on Blocky Survival

Note: It is preferable to *not* make updates directly on the Blocky Survival server, and instead only
pull in updates made elsewhere. Emergencies happen though, and cleaning things up isn't too hard.

Installing Locally
==================

1. `git clone https://github.com/BlockySurvival/bls_mods.git`
2. `cd bls_mods`
3. `git submodule update --init --recursive`

You may then wish to move the bls\_mods folder to `~/.minetest/mods` or `~/.minetest/worlds/NAME/worldmods` for testing.

Updating your bls\_mods repo
============================

1. `git pull`
2. `git submodule sync --recursive`
3. `git submodule update --recursive --init`
 
Setting up your local bls\_mods repo to push updates
====================================================

1. `git remote add github git@github.com:BlockySurvival/bls_mods.git`

Upgrading a subrepo
===================

1. `git submodule update --recursive --remote SUBREPO_NAME`
2. `git add SUBREPO_NAME .gitmodules`
3. `git commit -m 'updated SUBREPO'`
4. `git push github master`

Upgrading all subrepos
======================

1. `git submodule update --recursive --remote`
2. `git add .`
3. `git commit -m 'updated all'`
4. `git push github master`

Adding a new subrepo
====================

1. `git submodule add http://path/to/git/repo`
2. `git commit -m 'added new repo'`
3. `git push github master`

Making changes inside a subrepo
===============================

This is only for making changes to a repo or fork that you have write permissions to.

1. `cd subrepo`
2. e.g. `git remote add github git@github.com:BlockySurvival/....`
3. make changes
4. `git add changed_file`
5. `git commit -m 'changed something'`
6. `git push github HEAD:master`
7. `cd ..`
8. `git add subrepo`
9. `git commit -m 'updated subrepo'`
10. `git push github master`

Pointing a repo at a different fork
===================================

1. `vi .gitmodules`
2. find and replace the appropriate URL for the submodule
3. `git submodule sync --recursive`
4. `git submodule update --recursive --remote MODULE_NAME`
5. `git add .gitmodules MODULE_NAME`
6. `git commit -m 'pointed module_name at fork ...'`
7. `git push github master`

Pointing a repo at a different branch
=====================================

1. `git submodule set-branch -b branch_name module_name`
2. `git add .gitmodules module_name`
3. `git commit -m 'set module_name to track branch_name'`
4. `git push github master`
