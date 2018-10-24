alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"
alias pgrestart="pg_ctl -D /usr/local/var/postgres restart"

# Postgres setup
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

pgbackup() {
  date=`date +%d-%m-%Y`
  backup_file="${HOME}/db_backups/${date}.sql"
  touch "${backup_file}"
  pg_dumpall --clean > $backup_file
}
