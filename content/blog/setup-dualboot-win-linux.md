+++
"title": "How to dual boot Windows and Linux?",
"date": "18-4-2026"
+++
# How to dual boot Windows and Linux?

This article will focus on Arch specifically. I'm not interested in covering cases for other distros.

This article assumes you succesfully installed the system, and you have chosen to `chroot` into the system.

1. `mkdir /mnt/win` - Create a directory in `/mnt` for the Windows `C:` drive.
2. `mount /dev/<NAME> /mnt/win` - Mount the block device `<NAME>` where the `C:` drive is.
3. `cd /mnt/win/EFI` - Change the working directory to Windows' `EFI/` directory.
4. `cp -r Microsoft /boot/EFI/` - Copy the whole `Microsoft/` directory to Linux's `EFI/` directory.
5. Create the file `/boot/loader/entries/windows.conf`, and write into it:

```
title Windows
efi /boot/EFI/Microsoft/Boot/bootmgfw.efi
```

That's it! Don't forget to set proper boot orders in your BIOS.
