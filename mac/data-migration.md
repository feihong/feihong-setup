# Data Migration

## Backup files

On target machine, allow SSH login from another machine

- System Settings > General > Sharing
- Check Remote Login
- Click (i) next to Remote Login to see the ssh command which contains the IP address
- System Settings > Displays > Advanced...
- Check `Prevent automatic sleeping on power adapter when the display is off`

On source machine

    export TARGET_IP=<IP address from Remote Login step>
    python migrate_data.py

## Backup music metadata

    swift backup_tracks.swift
    swift backup_playlists.swift
    python transfer_music_metadata.py

## Teardown

On target machine

- System Settings > General > Sharing
- Uncheck Remote Login
- Click (i) next to Remote Login to see the ssh command which contains the IP address
- System Settings > Displays > Advanced...
- Uncheck `Prevent automatic sleeping on power adapter when the display is off`
