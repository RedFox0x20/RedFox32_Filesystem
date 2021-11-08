# RedFox32\_Filesystem

## FS Header
**FSH_Signature**
> A 2 byte string "RF" that allows the FS to be recognised.

**FSH_BootDrive**
> A boolean value that identifies the drive as bootable.

**FSH_DriveName**
> A 7 byte string that allows the disk to be given a user friendly name.

**FSH_DriveUUID**
> A placeholder short that will allow each disk to be uniquely identified.

**FSH_NumCylinders**
> A short value that defines the number of cylinders that the physical drive
> medium contains, this value will be set when the FS has been created and
> should remain a constant.

**FSH_NumHeads**
> A short value that defines the number of heads that the physical drive medium
> contains, this value will be set when the FS has been created and should
> remain a constant.

**FSH_NumSectors**
> A short value that defines the number of sectors that the physical drive
> medium contains, this value will be set when the FS has been created and
> should remain a constant.

**FSH_RootCylinder**
> A short value that defines the cylinder of the location of the FS root, this
> value should be assigned when the FS has been created and should remain a
> constant.

**FSH_RootSector**
> A short value that defines the sector of the location of the FS root, this
> value should be assigned when the FS has been created and should remain a
> constant.

**FSH_RootHead**
> A short value that defines the head of the location of the FS root, this value
> should be assigned when the FS has been created and should remain a constant.

**BootSignature**
> The boot signature is a global standard that is defined by the BIOS system.
> The byte pair `0xAA55` identifies to the BIOS that the disk is a bootable
> medium and that it should load the disk and attempt to boot it at system
> startup.
