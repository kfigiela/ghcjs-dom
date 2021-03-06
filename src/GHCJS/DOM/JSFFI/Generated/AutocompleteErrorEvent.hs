{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AutocompleteErrorEvent
       (js_getReason, getReason, AutocompleteErrorEvent,
        castToAutocompleteErrorEvent, gTypeAutocompleteErrorEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"reason\"]" js_getReason ::
        AutocompleteErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent.reason Mozilla AutocompleteErrorEvent.reason documentation> 
getReason ::
          (MonadIO m, FromJSString result) =>
            AutocompleteErrorEvent -> m result
getReason self = liftIO (fromJSString <$> (js_getReason (self)))