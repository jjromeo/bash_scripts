alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"
alias pgrestart="pg_ctl -D /usr/local/var/postgres restart"
export PATH="/usr/local/Cellar/postgresql@9.5/9.5.12/bin:$PATH"

pgbackup() {
  date=`date +%m-%d-%Y`
  mkdir -p "${HOME}/db_backups"
  backup_file="${HOME}/db_backups/${date}.sql"
  touch "${backup_file}"
  pg_dumpall --clean > $backup_file
}
