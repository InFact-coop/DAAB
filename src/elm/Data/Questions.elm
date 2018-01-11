module Data.Questions exposing (..)

import Types exposing (..)


questionList : List Question
questionList =
    [ { id = 1
      , question = "Q: Why do I collect boxes?"
      , answer = "A: Our collection boxes not only raise much needed funds they also help to raise awareness of the Devon Air Ambulance."
      }
    , { id = 2
      , question = "Q: How often do I need to collect boxes?"
      , answer = "A: We would ask you to service each of your boxes at least twice a year, although there may be some that fill up quickly and need doing more regularly.  This means that the Devon Air Ambulance Trust box can be brought to the fore and your visit will stay in the mind of the proprietor should they be planning to hold a charity event!"
      }
    , { id = 3
      , question = "Q: What do I need to do when collecting a box?"
      , answer = "A: The key points to remember when box collecting are:\n\nWhenever you take a box away from an outlet you MUST give a receipt.  This means funds can be traced from collection point to the Trust’s bank account.\n\nIt is very important to record the banking date accurately.\n\nShould you accidentally spoil any of your forms, please do not destroy it.  A spoilt form should have the word CANCELLED written through it and it should be returned to the office in the usual way.\n\nAs part of our internal audit processes, pre-counted test boxes will be randomly distributed throughout Devon regularly. This will enable us to monitor the accuracy of our box servicing processes."
      }
    , { id = 4
      , question = "Q: What do I do with the box when I'm in the outlet?"
      , answer = "A: When you go into an outlet to collect a full tin, take with you a neat and clean tin to replace it.\nIn the circular sticker write the box number, the name of the outlet and the date. \nA receipt must be issued when collecting and exchanging boxes.  This must be completed and signed by both the box holder and yourself.  Please write on the receipt the location and box number as it appears on the round box label."
      }
    , { id = 5
      , question = "Q: How do I record a box collection on the app?"
      , answer = "A: Go to 'Record Box Collection' from and carefully fill in the information. These are the same inputs as you have seen on the paper document. Once you have finished you can either add another box or save and exit."
      }
    , { id = 6
      , question = "Q: What bank should I pay in to?"
      , answer = "A: We would prefer you to pay the money you have collected into our account at your local branch of HSBC.  Please use your paying in book when you pay any money into the bank.\n\nAll money collected in a month should be banked in the same month if at all possible – preferably two days before the end of the month.  If this is not possible, please ensure that you record the banking date accurately. This is to help our Finance Department match our bank statements to your return."
      }
    , { id = 7
      , question = "Q: How do I record banking on the app?"
      , answer = "A: Simply go to 'Record Banking' from the home page and accurately enter the date you banked and the amount. Once you have finished you can either add another banking deposit or save and exit"
      }
    , { id = 8
      , question = "Q: How do I submit my completed documents?"
      , answer = "A: Either go to 'Track progress' from the home page, or, 'I'm Done' after you have completed your banking or box recordings. This will take you to a screen that reviews what you will be submitting. If you are happy with what you see then you can click 'Submit to DAA' which will send the information to the finance team."
      }
    , { id = 8
      , question = "Q: I'm still confused, what do I do?"
      , answer = "A: Don't worry! If you're in doubt please ring 01392466666 and speak to Cat or Brian."
      }
    ]
