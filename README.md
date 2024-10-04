# branch_namer
branch naming tool that sanitizes a ticket name copied from <insert your ticketing tool here> into a git branch friendly string!


from the command line:

```
> brname "103402069 (My Ticket Name Here)"

what type of work is this? (feature, fix, hotfix, task)
> feature

successfully copied: git checkout -b feature/103402069-my-ticket-name-here
```

### Setup:

add the following to your `~/.zshrc` (or other command line config file)
```
alias brname="ruby /<path-to-file>/branch_namer.rb"
```
