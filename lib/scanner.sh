# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::install()
#
#>
######################################################################
p6df::modules::cisco::scanner::install() {

  uv tool install "cisco-ai-skill-scanner[all]"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan(skill_path)
#
#  Args:
#	skill_path -
#
#>
######################################################################
p6df::modules::cisco::scanner::scan() {
  local skill_path="$1"

  skill-scanner scan "$skill_path" --use-behavioral

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan::all([skills_dir=$HOME/.claude/skills])
#
#  Args:
#	OPTIONAL skills_dir - [$HOME/.claude/skills]
#
#  Environment:	 HOME
#>
######################################################################
p6df::modules::cisco::scanner::scan::all() {
  local skills_dir="${1:-$HOME/.claude/skills}"

  skill-scanner scan-all "$skills_dir" --recursive --use-behavioral

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan::claude()
#
#  Environment:	 HOME
#>
######################################################################
p6df::modules::cisco::scanner::scan::claude() {

  p6df::modules::cisco::scanner::scan::all "$HOME/.claude/skills"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan::full(skill_path)
#
#  Args:
#	skill_path -
#
#>
######################################################################
p6df::modules::cisco::scanner::scan::full() {
  local skill_path="$1"

  skill-scanner scan "$skill_path" \
    --use-behavioral \
    --use-llm \
    --use-aidefense \
    --enable-meta

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan::llm(skill_path)
#
#  Args:
#	skill_path -
#
#>
######################################################################
p6df::modules::cisco::scanner::scan::llm() {
  local skill_path="$1"

  skill-scanner scan "$skill_path" \
    --use-behavioral \
    --use-llm

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan::ci([skills_dir=.], [output=results.sarif])
#
#  Args:
#	OPTIONAL skills_dir - [.]
#	OPTIONAL output - [results.sarif]
#
#>
######################################################################
p6df::modules::cisco::scanner::scan::ci() {
  local skills_dir="${1:-.}"
  local output="${2:-results.sarif}"

  skill-scanner scan-all "$skills_dir" \
    --use-behavioral \
    --fail-on-severity high \
    --format sarif \
    --output "$output"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::report::html(skill_path, [output=report.html])
#
#  Args:
#	skill_path -
#	OPTIONAL output - [report.html]
#
#>
######################################################################
p6df::modules::cisco::scanner::report::html() {
  local skill_path="$1"
  local output="${2:-report.html}"

  skill-scanner scan "$skill_path" \
    --use-behavioral \
    --use-llm \
    --enable-meta \
    --format html \
    --output "$output"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cisco::scanner::scan::virustotal(skill_path)
#
#  Args:
#	skill_path -
#
#>
######################################################################
p6df::modules::cisco::scanner::scan::virustotal() {
  local skill_path="$1"

  skill-scanner scan "$skill_path" \
    --use-behavioral \
    --use-virustotal

  p6_return_void
}
