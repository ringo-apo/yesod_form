{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}

module Handler.Page2 where

import Import

func1 :: Text -> Text -> Text
func1 x y = x ++ y

func2 :: Bool -> Text
func2 x = case x of
              True -> "Checked"
              False -> "Not checked"

func3 :: Text -> Text
func3 x = case x of
              "value1" -> "You selected value1"
              "value2" -> "You selected value2"
              _ -> "You do not selected" 


postPage2R :: Handler Html
-- postPage2R = error "Not yet implemented: postPage2R"
postPage2R = do

    textBox1 <- runInputPost $ ireq textField "content1"

    let textBox1_2 = func1 "Your word is " textBox1


    checkBox1 <- runInputPost $ ireq checkBoxField "checkBox1"

    let checkBox1_2 = func2 checkBox1

    radio1 <- runInputPost $ ireq textField "radio1"

    let radio1_2 = func3 radio1


    defaultLayout $(widgetFile "page2")
