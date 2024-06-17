# foo.R
# This script has several bugs that need to be fixed.

# Radius
r <- 2 

# Function to compute the volume of a sphere with radius r
volume <- function(r) {
  (4/3) * pi * r^3
}

# Function to compute the volumes of the spheres with radius r, r^2 and r^3 
volume_vector <- function(r) {
  volumes <- numeric(3)  # Initialize a vector to store volumes
  radii <- c(r, r^2, r^3)  # Calculate the different radii
  for (i in 1:3) {
    volumes[i] <- volume(radii[i])
  }
  return(volumes)  # Return the vector of volumes
}

# Run volume_vector(r) and print the volumes of the spheres with radius r, r^2 and r^3
volumes <- volume_vector(r)
print(volumes)
