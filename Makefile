# -----------------------------------------------------
# On Summit:
# -----------------------------------------------------
#
# module load intel
# module load impi

# -----------------------------------------------------
# Set compiler based on platform
# -----------------------------------------------------

COMPILER := pgc++ -O3 -acc -std=c++11

# -----------------------------------------------------
# Make solvers
# -----------------------------------------------------


ovenWalls: ovenWalls.cpp ovenWalls.h plotter.h geom.h Makefile
	pgc++ ovenWalls.cpp -o ovenWalls -std=c++11

