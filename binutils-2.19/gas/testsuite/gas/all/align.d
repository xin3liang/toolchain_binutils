#objdump: -s -j .text
#name: align

# Test the alignment pseudo-op.

.*: .*

Contents of section .text:
 0000 ff00ff01 ff020202 ffff0303 04040404  ................
 0010 ffffffff 05050505 ff090a0a 0a0a0a0a  ................
 0020 ff00ff01 ff020202 ffff0303 04040404  ................
 0030 ffffffff 05050505 ff090a0a 0a0a0a0a  ................
