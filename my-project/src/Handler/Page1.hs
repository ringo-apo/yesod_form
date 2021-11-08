{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}

module Handler.Page1 where

import Import

getPage1R :: Handler Html
-- getPage1R = error "Not yet implemented: getPage1R"
getPage1R = defaultLayout $(widgetFile "page1")
