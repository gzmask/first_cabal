module Paths_happstack01 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/gzmask/project/happstack01/.cabal-sandbox/bin"
libdir     = "/Users/gzmask/project/happstack01/.cabal-sandbox/lib/x86_64-osx-ghc-7.6.3/happstack01-0.1.0.0"
datadir    = "/Users/gzmask/project/happstack01/.cabal-sandbox/share/x86_64-osx-ghc-7.6.3/happstack01-0.1.0.0"
libexecdir = "/Users/gzmask/project/happstack01/.cabal-sandbox/libexec"
sysconfdir = "/Users/gzmask/project/happstack01/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "happstack01_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "happstack01_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "happstack01_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "happstack01_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "happstack01_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
