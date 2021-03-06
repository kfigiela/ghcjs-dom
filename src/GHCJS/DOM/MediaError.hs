{-# LANGUAGE CPP #-}
module GHCJS.DOM.MediaError (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.MediaError
#else
  module Graphics.UI.Gtk.WebKit.DOM.MediaError
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.MediaError
#else
import Graphics.UI.Gtk.WebKit.DOM.MediaError
#endif
