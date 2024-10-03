==== HALF-LIFE: ZOMBIES ATE MY NEIGHBOURS MUTLIPLAYER VERSION HISTORY ====
In this folder you'll find nearly every single changelog for every
single version of ZAMNHLMP leading up to the current version of
the game. There's a few missing from the Shooter Tourneys days
but otherwise everything is all here. For release dates of
each version go to "Version History.md"

==== VERSION NUMBER MEANINGS ====
The Phoenix Project Software is using a schematic version
numbering approach to ZAMNHLMP in contrast to its other
games where we use YYMM-revX for the build number
instead of X.X.X and so forth.

In the case of ZAMNHLMP, we approach versioning the game
with "<base>.<majorVersion>.<patch>". Currently the "base"
is 2.X.X and this has been the case since February 2021.
Generally we won't change the "base" number unless
there's an absolutely huge update which won't
be for a very long time, at least not as long as the
seasonal scheme is still going. It was updated to 2.X.X
in February 2021 as the game was renamed to what it is
today.

The major version and patch sections of the version
numbers are self explanatory, and patches are usually
minor changes. The important thing to note is that
patches are always **backwards-compatible** with the
previous versions of the same major version; so if
a server is running on the latest version, i.e. 2.7,
and a player is running the game on 2.7.2, with
another on 2.7.1, things will still run smoothly.
As long as the BASE and MAJOR VERSION are the same,
all clients and servers will communicate successfully.

==== VERSION TAGS ====
When a new update of ZAMNHLMP is in development,
new changes take place in the "dev" branch in Git,
and we use the gamedir "zamnhlmp_dev" to test the
in-development version. As ZAMNHLMP is an Early
Access game, the "dev" branch is completely public
and anyone can try an in-development update of the
game before it's officially released. In order to
differentiate standard release versions from
development milestones, we append the tag "PPT"
which means "Public Playtest." And starting with
version 2.9, when an update/new season is nearing
its completion we use the tag "RC" which stands for
"Release Candidate." In these versions we put no
attention on adding new content and playtest
the game thoroughly to make sure there are no bugs
before it releases fully.