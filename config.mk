# Voro++, a 3D cell-based Voronoi library
#
# Author   : Chris H. Rycroft (LBL / UC Berkeley)
# Email    : chr@alum.mit.edu
# Date     : August 30th 2011

# This file is used to configure the C++ compiler and library flags. It is
# also used to set the installation directory. If you are compiling on a
# different machine, it may be necessary to make some changes here.

# The C++ compiler to use
CXX = em++

# C++ compiler flags
CXXFLAGS = -O3 --bind -s SINGLE_FILE=1

# Installation directory
PREFIX = /usr/local

# Standard C++ libraries to link to
LIBS = -lm
