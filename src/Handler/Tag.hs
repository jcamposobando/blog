{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}

module Handler.Tag where

import Import
import Text.Julius (RawJS (..))

getTagR :: TagText -> Handler Html
getTagR tagText = do
    defaultLayout $ do
            aDomId <- newIdent
            setTitle "Welcome To Yesod!"
            $(widgetFile "homepage")
