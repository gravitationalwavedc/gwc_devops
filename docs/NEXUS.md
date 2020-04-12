# NEXUS
========
Reference: https://help.sonatype.com/learning/repository-manager-3

# Backup
========
## Blobstore
1. Check kubernetes manifest involving persistent volumes
2. Confirm blobstore physical location by getting the host ip <source> and the application path <nexus_data>
3. From the identified path, the blobstore location ../<nexus_data>/blobs
4. Execute rsync -avP <source>:/<nexus_data>./blobs <destination>:/backup_location

## DB
1. Login with an admin account
2. Go to the Server administration and configuration
3. On the left hand side, go to System>Tasks
4. Confirm or create task existance by filtering for `Export databases for backup`

# Disaster Recovery and Data Migration
========
# Prerequisites
1. Deploy nexus on on the new host with paired perisistent storage
2. Delete the following folders:
- ./<nexus_data>/db/component
- ./<nexus_data>/db/config
- ./<nexus_data>/db/cosecuritynfig

## Restore Blobstore
1. Confirm blobstore backup location
2. rsync -avP <source>:/backup_location <destination>:/<nexus_data>./blobs

## Restore DB
1. Confirm db backup location
2. rsync -avP <source>:/backup_location <destination>:/<nexus_data>./restore-from-backup

** Redeploy Nexus

# Testing: Disaster Recovery and Data Migration
