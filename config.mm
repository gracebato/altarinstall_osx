# -*- Makefile -*-
#
# michael a.g. aïvázis
# parasim
# (c) 1998-2018 all rights reserved
#

# system tools
sys.prefix := /opt/local
# the user's tools directory
user.prefix := $(HOME)/tools

# cuda
# cuda.version := 9.2
# cuda.dir := /opt/cuda-9.2

# fftw
fftw.version := 3.3
fftw.dir := $(sys.prefix)
fftw.flavor := 3f

# gmsh
gmsh.version := 2.8.4
gmsh.dir := $(sys.prefix)

# gsl
gsl.version := 2.4
gsl.dir := $(sys.prefix)

# hdf5
hdf5.version := 1.10
hdf5.dir := $(sys.prefix)

# libpq
libpq.version := 10.4
libpq.dir := $(sys.prefix)
libpq.incpath := $(libpq.dir)/include/postgresql10
libpq.libpath := $(libpq.dir)/lib/postgresql10

# metis
metis.version := 5.1.0
metis.dir := $(sys.prefix)

# mpi
mpi.version := 3.0
mpi.dir := $(sys.prefix)
mpi.binpath := $(mpi.dir)/bin
mpi.incpath := $(mpi.dir)/include/openmpi-gcc8
mpi.libpath := $(mpi.dir)/lib/openmpi-gcc8
mpi.flavor := openmpi
mpi.executive := mpirun-openmpi-gcc8

# openblas
openblas.version := 0.2.20
openblas.dir := $(sys.prefix)

# parmetis
parmetis.version := 4.0.3
parmetis.dir := $(sys.prefix)

# petsc
petsc.version := 3.8.3
petsc.dir := $(sys.prefix)/lib/petsc

# pyre
pyre.version := 1.0
pyre.dir := $(user.prefix)/opt-shared-darwin-x86_64
pyre.defines += DEBUG_CHECK_BOUNDS

# python
python.version := 3.7
python.dir := $(sys.prefix)/Library/Frameworks/Python.framework/Versions/$(python.version)

# slepc
slepc.version := 3.8.2
slepc.dir := $(sys.prefix)/lib/slepc

# vtk
vtk.version := 8.1
vtk.dir := $(sys.prefix)

# end of file
