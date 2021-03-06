{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE QuasiQuotes         #-}

module Home where

import Yesod.Core
import Foundation
import Text.Hamlet

getHomeR :: Handler Html
getHomeR = do defaultLayout [whamlet|
               <!DOCTYPE html>
               <html>
                 <head>
                   <title>Eta is running on Yesod!
                 <body style="background-color: #2cd4d9">
                   <div class="box">
                     <h1 style="color: #ffffff; text-align: center;">Yesod-minimal example in Eta!
                     <h3 style="color: #ffffff; text-align: center;">
                     <p style="text-align:center">
                         <a style="color: white" href=@{AddR 1 3}>HTML
                     <p style="text-align:center">
                         <a style="color: white" href=@{AddR 1 3}?_accept=application/json>JSON
                 <style>
                   .box{
                        width: 400px;
                        background: #43414e;
                        border-radius: 10px;
                        padding: 60px;
                        margin: auto;
                        position: relative;
                        top: 250px;
                        -webkit-box-shadow: 0 10px 6px -6px #777;
                        -moz-box-shadow: 0 10px 6px -6px #777;
                        box-shadow: 0 10px 6px -6px #777;
                       }
|]
