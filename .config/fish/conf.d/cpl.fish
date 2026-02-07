function cpl --description "Copies last command"
    history | head -n 1 | pbcopy
end
