+++
"Title": "How to dual boot Windows and Linux?",
"Date": "2026-04-18"
+++

This article will focus on Arch specifically. I'm not interested in covering cases for other distros.

This article assumes you succesfully installed the system, have Windows already installed, and that you have chosen to `chroot` into the system.

1. Create a directory in `/mnt` for the Windows `C:` drive.
```
mkdir /mnt/win
```

2. Mount the block device `<NAME>` where the `C:` drive is.
```
mount /dev/<NAME> /mnt/win
```

3. Change the working directory to Windows' `EFI/` directory.
```
cd /mnt/win/EFI
```

4. Copy the whole `Microsoft/` directory to Linux's `EFI/` directory.
```
cp -r Microsoft /boot/EFI/
```

5. Create the file `/boot/loader/entries/windows.conf`, and write into it:
```
title Windows
efi /boot/EFI/Microsoft/Boot/bootmgfw.efi
```

That's it! Don't forget to set proper boot orders in your BIOS.
