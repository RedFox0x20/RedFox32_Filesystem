# RedFox32\_Filesystem

## CONSTANTS

```
FS_ROOT_SIZE = 2048 Bytes
FS_DISK_MAP_SIZE =
    ((Num Cylinders * Num Sectors per Cylinder * Num Heads) / 8) Bytes

FS_DIRECTORY_MAP_SIZE = 2048 Bytes
FS_DIRECTORY_MAP_ENTRY_SIZE = 24 Bytes
FS_DIRECTORY_MAP_NUM_ENTRIES = 83

FS_FLAG_EXECUTE = 0b 0000 0000 0000 0001
FS_FLAG_WRITE   = 0b 0000 0000 0000 0010
FS_FLAG_READ    = 0b 0000 0000 0000 0100
FS_FLAG_HIDDEN  = 0b 0000 0000 0000 1000
FS_FLAG_SYSTEM  = 0b 0000 0001 0000 0000
FS_FLAG_FREE    = 0b 1000 0000 0000 0000
```

An example `FS_DISK_MAP_SIZE` would be `360` for a 3.5" 1.44MB floppy.

## STRUCTURES
**FS Root**
Identifier
> 4 character string constant "RFFS"
Disk Map
> byte array of size FS\_DISK\_MAP\_SIZE
Root Pointer
> A FS\_CHS\_Address structure

**CHS Address**
Cylinder
> A short (2 byte) unsigned integer
Head
> A short (2 byte) unsigned integer
Sector
> A short (2 byte) unsigned integer

**Directory Map**
Directory Map Identifier
> 7 character null terminated string constant "RFFS\_DM",0
Directory Map Entries
> An array of "Directory Map Entry" structures of size
Parent Directory
> A CHS Address Structure
Directory Expansion
> A CHS Address Structure

**Directory Map Entry**
Attribute flags
> A short value containing bit flags (defined as FS\_FLAG\_[Type])
Name
> 8 character string
Location
> A CHS Address structure
Size
> A long (4 byte) integer containing the number of sectors used for the file
Reserved
> 4 Reserved bytes which have an undetermined value, provides an even number of
> bytes for best data storage and access efficiency.
