#!/bin/sh

# Check if the node was configured to use s3cmd
# This is done by running s3cmd --configure
if [ ! -f "${HOME}/.s3cfg" ]; then
    echo "No $HOME/.s3cfg file found. Please config the software first in your system"
    exit 1
fi

# Make documentation if not build
if [ ! -f "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/build/x64-Debug/examples/ign_configure_build_RelWithDebInfo-prefix/src/ign_configure_build_RelWithDebInfo-build/doxygen/html/index.html" ]; then
  make doc
  if [ ! -f "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/build/x64-Debug/examples/ign_configure_build_RelWithDebInfo-prefix/src/ign_configure_build_RelWithDebInfo-build/doxygen/html/index.html" ]; then
    echo "Documentation not present. Install doxygen, and run `make doc` in the build directory"
    exit 1
  fi
fi

# Dry run
s3cmd sync C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/build/x64-Debug/examples/ign_configure_build_RelWithDebInfo-prefix/src/ign_configure_build_RelWithDebInfo-build/doxygen/html/ s3://ignitionrobotics.org/api/minimal/0.1/ -v

echo -n "Upload (Y/n)? "
read ans

if [ "$ans" = "n" ] || [ "$ans" = "N" ]; then
  exit 1
else
  s3cmd sync C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/build/x64-Debug/examples/ign_configure_build_RelWithDebInfo-prefix/src/ign_configure_build_RelWithDebInfo-build/doxygen/html/ s3://ignitionrobotics.org/api/minimal/0.1/ -v
  s3cmd sync C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/build/x64-Debug/examples/ign_configure_build_RelWithDebInfo-prefix/src/ign_configure_build_RelWithDebInfo-build/tutorials/html/ s3://ignitionrobotics.org/tutorials/minimal/0.1/ -v

  echo "WARNING"
  echo "  A CloudFront invalidation is required. Run the following command with the appropriate \$CLOUDFRONT_DISTRIBUTION_ID:\n"
  echo "  aws cloudfront create-invalidation --distribution-id \$CLOUDFRONT_DISTRIBUTION_ID --paths '/*'"
fi
