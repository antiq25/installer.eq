# gh-search-commits
# Autogenerated from man page /opt/homebrew/share/man/man1/gh-search-commits.1
complete -c gh-search-commits -l author -d 'Filter by author'
complete -c gh-search-commits -l author-date -d 'Filter based on authored date'
complete -c gh-search-commits -l author-email -d 'Filter on author email'
complete -c gh-search-commits -l author-name -d 'Filter on author name'
complete -c gh-search-commits -l committer -d 'Filter by committer'
complete -c gh-search-commits -l committer-date -d 'Filter based on committed date'
complete -c gh-search-commits -l committer-email -d 'Filter on committer email'
complete -c gh-search-commits -l committer-name -d 'Filter on committer name'
complete -c gh-search-commits -l hash -d 'Filter by commit hash'
complete -c gh-search-commits -s q -l jq -d 'Filter JSON output using a jq expression'
complete -c gh-search-commits -l json -d 'Output JSON with the specified fields'
complete -c gh-search-commits -s L -l limit -d 'Maximum number of commits to fetch'
complete -c gh-search-commits -l merge -d 'Filter on merge commits'
complete -c gh-search-commits -l order -d 'Order of commits returned, ignored unless \'--sort\' flag is specified: {asc|de…'
complete -c gh-search-commits -l owner -d 'Filter on repository owner'
complete -c gh-search-commits -l parent -d 'Filter by parent hash'
complete -c gh-search-commits -s R -l repo -d 'Filter on repository'
complete -c gh-search-commits -l sort -d 'Sort fetched commits: {author-date|committer-date}'
complete -c gh-search-commits -s t -l template -d 'Format JSON output using a Go template; see "gh help formatting"'
complete -c gh-search-commits -l tree -d 'Filter by tree hash'
complete -c gh-search-commits -l visibility -d 'Filter based on repository visibility: {public|private|internal}'
complete -c gh-search-commits -s w -l web -d 'Open the search query in the web browser EXAMPLE # search commits matching se…'

