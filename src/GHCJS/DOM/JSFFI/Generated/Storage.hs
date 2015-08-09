{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Storage
       (js_key, key, js_getItem, getItem, js_setItem, setItem,
        js_removeItem, removeItem, js_clear, clear, js_getLength,
        getLength, Storage, castToStorage, gTypeStorage)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"key\"]($2)" js_key ::
        JSRef Storage -> Word -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
key ::
    (MonadIO m, FromJSString result) =>
      Storage -> Word -> m (Maybe result)
key self index
  = liftIO (fromMaybeJSString <$> (js_key (unStorage self) index))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: JSRef Storage -> JSString -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.getItem Mozilla Storage.getItem documentation> 
getItem ::
        (MonadIO m, ToJSString key, FromJSString result) =>
          Storage -> key -> m (Maybe result)
getItem self key
  = liftIO
      (fromMaybeJSString <$>
         (js_getItem (unStorage self) (toJSString key)))
 
foreign import javascript unsafe "$1[\"setItem\"]($2, $3)"
        js_setItem :: JSRef Storage -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.setItem Mozilla Storage.setItem documentation> 
setItem ::
        (MonadIO m, ToJSString key, ToJSString data') =>
          Storage -> key -> data' -> m ()
setItem self key data'
  = liftIO
      (js_setItem (unStorage self) (toJSString key) (toJSString data'))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: JSRef Storage -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.removeItem Mozilla Storage.removeItem documentation> 
removeItem :: (MonadIO m, ToJSString key) => Storage -> key -> m ()
removeItem self key
  = liftIO (js_removeItem (unStorage self) (toJSString key))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        JSRef Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.clear Mozilla Storage.clear documentation> 
clear :: (MonadIO m) => Storage -> m ()
clear self = liftIO (js_clear (unStorage self))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef Storage -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.length Mozilla Storage.length documentation> 
getLength :: (MonadIO m) => Storage -> m Word
getLength self = liftIO (js_getLength (unStorage self))