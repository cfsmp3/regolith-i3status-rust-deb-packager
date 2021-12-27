A simple Debian packager for i3status-rust

Notes:

- Half-baked. It depends on some files that were created externally (but they work).

- Because there's some patches there that the Debian package system depends on it 
  only works on a specific release. I think this can be solved.

- Output files will be in packaging/ . Remember to sign them.

- Target is Ubuntu 20.04. 

- Regolith is in the name to avoid collisions (in case an official package comes
  out), but since all work has been merged upstream it's the mainstream i3status-rust. 
