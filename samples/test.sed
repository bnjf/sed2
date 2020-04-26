#!/bin/sed -nf

s/g/_g_/

{
b
}

#1,2p
1,2{
  s/foo/bar/
  # nested
  {
    s/bar/foo/
    }
  }

:z
s/.//
1bz

1!p
!p

2,5 !  p

s/foo/bar/g
s/foo/bar/g1
s/foo/bar/g1p
s/foo/bar/wg1p
s/foo/bar/1g2
s/foo/bar/w   	 stuff
