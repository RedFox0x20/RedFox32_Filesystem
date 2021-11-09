; rffs_root.asm
; ------------------------------------------------------------------------------
; 08/11/2021 - RedFox0x20
; ------------------------------------------------------------------------------
; Bootloader sample displaying all necessary data that will be used by rffs
; This file is not a complete boot sector however it will assemble and run.
;
; Full documentation can be read in:
;     docs/RedFox32_Filesystem_Specification.md
; ------------------------------------------------------------------------------

; When the computer boots in BIOS mode we start in 16 bit real mode at position
; 0x7C00 in memory. Here we tell the assembler that information so it can
; generate the appropriate machine code.
[BITS 16]
[ORG 0x7C00]

; A short jump ensures that certain registers are set correctly and that the
; assembler will generate the correct machine code.
jmp 0x7C00:Root_Main
nop

; This data contains all of the FileSystem specific data that will be useful for
; initalisation and other elements of the bootloader and ultimately the later OS
; as a whole.
FileSystemHeader:
FSH_Signature: db "RF"         ; Magic bytes to identify the rffs
FSH_BootDrive: db 1            ; If the drive is bootable set this byte to 1
FSH_DriveName: db "1234567"    ; 7 character name
FSH_DriveUUID: dw 0            ; UUID of the disk

; These values are constants defined by the physical storage media.
; The values provided are for 3.5" 144MB Floppy Disc
FSH_NumCylinders: dw 160       ; Number of boot medium cylinders
FSH_NumHeads: dw 2             ; Number of boot medium heads
FSH_NumSectors: dw 18          ; Number of sectors per cylinder

; These values are where we can find the root of the FS
FSH_RootCylinder: dw 0         ; Root cylinder, 0 based
FSH_RootSector: dw 2           ; Root sector, 1 based
FSH_RootHead: dw 0             ; Root head, 0 based


; This data is useful for the initialisation of the system and further boot
; processes
RootData:
BootDrive: db 0 ; Claims a byte to be used for storing the boot drive ID

; The first set of instructions that will be run, this should perform some basic
; initialisation of the system to produce a suitable environment.
Root_Main:
	; At this stage
	; AX = 0xAA55
	; BL = DriveNumber (0 for floppies)
	; CS = 0x7C00
	;
	; We want to store the Drive Number for later use
	mov byte [BootDrive], bl ; Move bl into BootDrive

; When we reach this point, disable interrupts and HALT the CPU, in the event
; the CPU escapes the halt, jump back to STOP.
STOP:
	cli
	hlt
	jmp STOP

; All BIOS systems require the _Magic_ BootSignature bytes to be set in the boot
; sector. These bytes tell the BIOS that this is a bootable disk and should
; attempt to boot with it.
times 510 - ($ - $$) db 0
BootSignature: dw 0xAA55
