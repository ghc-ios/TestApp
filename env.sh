GHC_BUILD_DIR=../ghc

. $GHC_BUILD_DIR/env.sh
export CROSS_COMPILE=arm-apple-darwin10-
export ALIEN_SCRIPT=$GHC_BUILD_DIR/alien
export PATH=/usr/local/ghc-iphone/bin:$GHC_BUILD_DIR/bin:$PATH
