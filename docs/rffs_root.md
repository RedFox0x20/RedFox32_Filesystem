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

## RootData
**BootDrive**
> A byte value that contains the DiskID as set by the BIOS. The value is
> stored in the bl register. ((There may be exceptions to this rule
> that I am unaware of.))

## Code
**Root_Main**
> Root main is where the bootloader code begins, here the bootloader would do
> some initialisation in addition to loading the second bootloader stage,
> sometimes this would also be where the kernel is loaded however in most cases
> a two stage bootloader is likely to be used as they are much easier to
> implement.

**STOP**
> STOP provides a forever loop that disables interrupts and halts the CPU, this
> is in effect a _shutdown_ however it does not turn the system off, only
> halting the CPU.

## Additional Data
**BootSignature**
> The boot signature is a global standard that is defined by the BIOS system.
> The byte pair `0xAA55` identifies to the BIOS that the disk is a bootable
> medium and that it should load the disk and attempt to boot it at system
> startup.
