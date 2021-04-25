# Calculator
A simple arithmetic calculator written in Delphi for Win32 platform.

### About versioning
Binaries follows Delphi's Auto generate build number: Major.Minor.Release.Build

* Release = number of days since Jan 1 2000.
* Build = number of seconds since midnight (00:00:00), divided by 2.

Git tags uses numeric suffixes. Eg:

* Alpha releases: 1.0.0.2x (1.0.0.21, 1.0.0.22, 1.0.0.257)
* Beta releases: 1.0.0.5x (1.0.0.51, 1.0.0.52, 1.0.0.567)
* Release candidates: 1.0.0.9x (1.0.0.91, 1.0.0.92, 1.0.0.957)
* Release: 1.0.0
* Post releases: 1.0.1

The aimed git tag should be informed in the Project Options Key/Value list box, in the Product version key.
