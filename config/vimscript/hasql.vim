" my_syntax_definitions.vim
" Define a custom cluster named @MySqlTop
syn cluster sqlMyTop contains=sqlSpecial,sqlKeyword,sqlOperator,sqlStatement,sqlType,sqlString,sqlNumber,sqlComment,sqlFunction

" Use the custom cluster in your syntax region definitions
let qqList = ['singletonStatement', 'maybeStatement', 'vectorStatement', 'foldStatement', 'resultlessStatement', 'rowsAffectedStatement', 'uncheckedSql']
for qq in qqList
    execute 'syntax region ' . qq . ' start=/\\\\\[' . qq . '\\\\\\|/ end=/\\\\\|\\\\\]/ contains=@sqlMyTop keepend'
endfor

runtime! syntax/sql.vim
syntax include @sqlTop syntax/sql.vim
let b:current_syntax = "haskell"

