# LastPass command-line utility for OS X

## Description

This is a simple set of scripts to help with using LastPass from the command-line in OS X

## Requirements

* Ruby >= 1.9.3
* lastpass-ruby gem
* bash

If you have ruby, to install the `lastpass-ruby` gem, just run:
```
gem install lastpass
```

## Installation

For convenience, copy the three scripts, `load-last-pass`, `lastpass` and `lastpass.rb` into a directory in PATH.
[Optional]

The three scripts should be kept in the same directory

## Usage

Set your LastPass user:
```
$ export LASTPASS_USER="myUser@domain.com"
```

You can either enter your LastPass password every time, or you can load it into your environment variables with this
command:
```
$ . <script-path>/load-last-pass
LastPass password:
$                               # Password is now set in LASTPASS_PASSWORD
```

You can also set this environment variable yourself.  If it is not set, you will be prompted for your password, though
in that case it won't remain set in your environment.

Retrieve list of available LastPass sites:
```
$ <script-path>/lastpass
google.com
adobeid-na1.services.adobe.com
github.com
```

Load the password for one of these sites into your clipboard:
```
$ <script-path>/lastpass google
```
