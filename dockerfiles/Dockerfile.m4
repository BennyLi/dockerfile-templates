include(`macros.m4')
DONT_CHANGE(__file__)

FROM ubuntu:latest

include(`variables.m4')

include(`includes/user-setup.m4')

include(`includes/base-tools.m4')

include(`volumes.m4')

include(`includes/user-post-setup.m4')
include(`includes/packages-post-setup.m4')

# atom:set grammar=Dockerfile
dnl # atom:set grammar=Makefile
