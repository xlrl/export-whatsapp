# Export WhatsApp Chats

This is a set of scripts to export WhatsApp chats and messages. I used this when I moved away from WhatsApp (as of 2019). This information and parts of the scripts might be outdated. Feel free to comment and send me pull requests.

Install the dependend packages:

```shell
python install-externals.py
```

Get the information from your (Android) smartphone:

```shell
./pull_files.sh
```

Extract the information:

```shell
./decrypt_and_export.sh
```

## Requirements

The scripts will run in Linux, but might work on Mac OS/X or Windows Shell (not `cmd.exe`) as well.

Needed software:

* Java
* Python 2 (for `Whapa`)
* Python 3
* ADB
* GIT

## Further Information

### Decrypt messages

* <https://stackpointer.io/security/decrypt-whatsapp-crypt12-database-messages/559/>
* <https://stackpointer.io/security/decrypt-whatsapp-crypt8-database-messages/419/>

### Extract Messages

* https://github.com/B16f00t/whapa
