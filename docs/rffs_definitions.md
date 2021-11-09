# RedFox32\_Filesystem

## DEFINITIONS
**Cylinders, Heads, Sectors and CHS Addressing**
> Cylinder Head Sector (or CHS) Addressing is a method of interpreting where
> data is stored on the physical drive medium by splitting the disk into sections
> called cylinders where each cylinder contains a number of sectors.
> The number of heads refers to the number of read/write heads available to the 
> disk medium, this is often two or more. CHS uses zero based figures.

**Disk Root**
> Disk Root is the very first sector of the disk defined by CHS Address (0,0,0).

**FS Root**
> FS Root refers to a section of the disk which holds some fixed data about the
> disk and how the FS is storing data on the disk, this includes items such CHS
> addresses.

**Disk Map**
> The Disk Map of an rffs system is a section of the disk which tracks which
> sectors have been allocated.

**Directory Map**
> A Directory Map is section of data used by the FS to store information about
> the individual data blocks (Files) on the system, including metadata such as
> access controls.

