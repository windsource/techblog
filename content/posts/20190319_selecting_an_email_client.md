---
title: "Selecting an email client for Linux"
date: 2019-03-19
draft: false
---

Recently I switched from Mac to Linux using a Manjaro distribution. As macOS comes with a very elegant and intuitive email client I was searching for something similar on Linux. 

## Thunderbird

I already knew [Thunderbird](https://www.thunderbird.net/) from Windows so I started with that one. I has quite a lot of features and supports various accounts and a wizard to set them up. Also an address book with Carddav support and a calendar with iCal interface are available. The negative part is the user interface. It is quite old fashioned using columns for the message list. I was used to have one box per message with the sender on top and the subject and maybe the first words of the message below. Unfortunately that is not available for Thunderbird.

## Evolution

[Evolution](https://help.gnome.org/users/evolution/stable/index.html) is a kind of Outlook clone for Linux. It also comes with address book and calendar but similiar to Thunderbird it also does not support one box per message in the message list but only a column list.

## Geary

[Geary](https://wiki.gnome.org/Apps/Geary) strong part is the user interface. It does have a UI that is very similar to macOS mail. There is the message list with one box per message and all looks very modern. But overall I got the feeling that this client was designed to be used with Gmail. It also works with IMAP accounts but then only a part of the funtionality is available. For example it possible to star a message (I used the flag with message on Mac quite intensiv) but listing the starred messages is only possible with Gmail not with IMAP accounts. That's a strong minus for Geary.

## Mailspring 

When searching Google for Linux email clients I also found [Mailspring](https://getmailspring.com/). It looks very nice and is based on the Electron framework. Unfortunately it requires an account with the supplier which is used by the app. That was not acceptable for me as email is sensitive and I did not want to share anything related to my email with anyone I did not know

## Summary

In the end I did not find an email client for Linux that is as nice as macOS mail. But I found a webmail software that also has a very nice user interface: [Roundcube](https://roundcube.net/). There are several themes available and the elastic theme looks most modern to me. Using plugins I was also able to access my Carddav address book and also have more than one account. That works very well for me.
