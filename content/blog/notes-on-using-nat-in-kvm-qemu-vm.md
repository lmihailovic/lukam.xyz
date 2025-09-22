+++
"Title": "Notes on using NAT in kvm/qemu VM",
"Date": "08-06-2025"
+++

A short one today, since I wanted to share my easy fix to a seemingly not so
easy problem I recently encountered.

When running a VM on Linux using the qemu/kvm, you might encounter issues with
giving the VM internet access, despite configuring the NAT properly, and
installing the virtio drivers.

The trick (assuming you're running `iptables`) is to edit
`/etc/libvirt/network.conf`, and uncomment the probably last line, `# firewall_backend = "iptables"`

Truth be told, this article is more of a note for myself running future VMs on
Linux, given this problem continues to exist, but who knows, if it helps even
one other person beside myself, I'd be very glad. 