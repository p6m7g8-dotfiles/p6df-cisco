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
  alias ssw='skill-scanner'

  # scan a single skill path
  alias ss='skill-scanner scan'

  # scan all skills recursively
  alias ssa='skill-scanner scan-all'

  # quick behavioral scan of all claude skills
  alias ssc='p6df::modules::cisco::scanner::scan::claude'

  # full scan (behavioral + llm + aidefense) of a skill path
  alias ssf='p6df::modules::cisco::scanner::scan::full'

  # ci scan emitting sarif to results.sarif
  alias ssci='p6df::modules::cisco::scanner::scan::ci'

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::cisco::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}
