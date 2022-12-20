# Data Migration

## Backup files

On target machine, allow SSH login from another machine

- System Settings > General > Sharing
- Check Remote Login
- Click (i) next to Remote Login to see the ssh command which contains the IP address

On source machine

- Create `secrets.py` and fill in the target machine's IP address
- Run `python migrate_data.py`

## Backup music metadata

Run `swift backup_tracks.swift`