function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  VIRTUAL_ENV_PROMPT=$(cat $VIRTUAL_ENV/pyvenv.cfg | grep '^prompt' | awk -F "'" '{print $2}' | xargs)
  [[ -n ${VIRTUAL_ENV_PROMPT} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX=[}$VIRTUAL_ENV_PROMPT${ZSH_THEME_VIRTUALENV_SUFFIX=]}"
}

export VIRTUAL_ENV_DISABLE_PROMPT=1
