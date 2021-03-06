{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLFrameElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLFrameElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLFrameElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameElement
#endif
