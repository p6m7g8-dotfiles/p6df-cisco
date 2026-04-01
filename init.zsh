# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::cisco::deps()
#
#>
######################################################################
p6df::modules::cisco::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-python
  )
}

######################################################################
#<
#
# Function: p6df::modules::cisco::aliases::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::cisco::aliases::init() {
  local _module="$1"
  local dir="$2"

  # skill-scanner wizard (interactive)
  p6_alias "ssw" "skill-scanner"

  # scan a single skill path
  p6_alias "ss" "skill-scanner scan"

  # scan all skills recursively
  p6_alias "ssa" "skill-scanner scan-all"

  # quick behavioral scan of all claude skills
  p6_alias "ssc" "p6df::modules::cisco::scanner::scan::claude"

  # full scan (behavioral + llm + aidefense) of a skill path
  p6_alias "ssf" "p6df::modules::cisco::scanner::scan::full"

  # ci scan emitting sarif to results.sarif
  p6_alias "ssci" "p6df::modules::cisco::scanner::scan::ci"

  p6_return_void
}

######################################################################
#<
#
# Function: words cisco $CISCO_HOST = p6df::modules::cisco::profile::mod()
#
#  Returns:
#	words - cisco $CISCO_HOST
#
#  Environment:	 CISCO_HOST
#>
######################################################################
p6df::modules::cisco::profile::mod() {

  p6_return_words 'cisco' '$CISCO_HOST'
}

