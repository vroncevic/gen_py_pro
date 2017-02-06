#!/bin/bash
#
# @brief   Generate Python App Project
# @version ver.1.0
# @date    Thu Feb 07 00:46:32 2016
# @company None, free software to use 2016
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#
UTIL_ROOT=/root/scripts
UTIL_VERSION=ver.1.0
UTIL=${UTIL_ROOT}/sh_util/${UTIL_VERSION}
UTIL_LOG=${UTIL}/log

.	${UTIL}/bin/devel.sh
.	${UTIL}/bin/usage.sh
.	${UTIL}/bin/check_root.sh
.	${UTIL}/bin/check_tool.sh
.	${UTIL}/bin/logging.sh
.	${UTIL}/bin/load_conf.sh
.	${UTIL}/bin/load_util_conf.sh
.	${UTIL}/bin/progress_bar.sh

GEN_PY_PRO_TOOL=gen_py_pro
GEN_PY_PRO_VERSION=ver.1.0
GEN_PY_PRO_HOME=${UTIL_ROOT}/${GEN_PY_PRO_TOOL}/${GEN_PY_PRO_VERSION}
GEN_PY_PRO_CFG=${GEN_PY_PRO_HOME}/conf/${GEN_PY_PRO_TOOL}.cfg
GEN_PY_PRO_UTIL_CFG=${GEN_PY_PRO_HOME}/conf/${GEN_PY_PRO_TOOL}_util.cfg
GEN_PY_PRO_LOG=${GEN_PY_PRO_HOME}/log

declare -A GEN_PY_PRO_USAGE=(
	[USAGE_TOOL]="${GEN_PY_PRO_TOOL}"
	[USAGE_ARG1]="[PROJECT NAME] Python App Project Name"
	[USAGE_EX_PRE]="# Generating Python App Project"
	[USAGE_EX]="${GEN_PY_PRO_TOOL} RCP"
)

declare -A GEN_PY_PRO_LOGGING=(
	[LOG_TOOL]="${GEN_PY_PRO_TOOL}"
	[LOG_FLAG]="info"
	[LOG_PATH]="${GEN_PY_PRO_LOG}"
	[LOG_MSGE]="None"
)

declare -A PB_STRUCTURE=(
	[BW]=50
	[MP]=100
	[SLEEP]=0.01
)

TOOL_DBG="false"
TOOL_LOG="false"
TOOL_NOTIFY="false"

#
# @brief   Main function
# @param   Value required project name
# @retval  Function __gen_py_pro exit with integer value
#			0   - tool finished with success operation
#			128 - missing argument(s) from cli
#			129 - failed to load tool script configuration from files
#			130 - project already exist
#			131 - failed to load project set configuration from file
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# __gen_py_pro "rtp"
#
function __gen_py_pro() {
	local PNAME=$1
	if [ -n "${PNAME}" ]; then
		local FUNC=${FUNCNAME[0]} MSG="None" STATUS_CONF STATUS_CONF_UTIL STATUS
		MSG="Loading basic and util configuration!"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		__progress_bar PB_STRUCTURE
		declare -A config_gen_py_pro=()
		__load_conf "$GEN_PY_PRO_CFG" config_gen_py_pro
		STATUS_CONF=$?
		declare -A config_gen_py_pro_util=()
		__load_util_conf "$GEN_PY_PRO_UTIL_CFG" config_gen_py_pro_util
		STATUS_CONF_UTIL=$?
		declare -A STATUS_STRUCTURE=(
			[1]=$STATUS_CONF [2]=$STATUS_CONF_UTIL
		)
		__check_status STATUS_STRUCTURE
		STATUS=$?
		if [ $STATUS -eq $NOT_SUCCESS ]; then
			MSG="Force exit!"
			__info_debug_message_end "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
			exit 129
		fi
		TOOL_LOG=${config_gen_py_pro[LOGGING]}
		TOOL_DBG=${config_gen_py_pro[DEBUGGING]}
		TOOL_NOTIFY=${config_gen_py_pro[EMAILING]}
		MSG="Generating project structure [${PNAME}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		if [ -d "${PNAME}/" ]; then
			MSG="Project structure already exist [${PNAME}]!"
			__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
			MSG="Force exit!"
			__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
			exit 130
		fi
		MSG="Generating directory [${PNAME}/]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		mkdir "${PNAME}/"
		local SRC="${PNAME}/src"
		MSG="Generating directory [${SRC}/]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		mkdir "${SRC}/"
		local PROJECT_SET=${config_gen_py_pro_util[PROJECT_SET]} TREE
		declare -A project_set=()
		__load_util_conf "${GEN_PY_PRO_HOME}/conf/${PROJECT_SET}" project_set
		STATUS=$?
		if [ $STATUS -eq $NOT_SUCCESS ]; then
			MSG="Force exit!"
			__info_debug_message_end "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
			exit 131
		fi
		local HASH="#" TAB="	" DATE=`date` BSLASH="\\"
		local ASHT=${project_set[AUTOGEN_SH]} ASHF="${PNAME}/autogen.sh"
		local ASHC=$(cat "${GEN_PY_PRO_HOME}/conf/${ASHT}")
		MSG="Generating file [${ASHF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		echo -e "${ASHC}" > "${ASHF}"
		local CT=${project_set[CONFIGURE_AC]} CF="${PNAME}/configure.ac" CL
		local CTF="${GEN_PY_PRO_HOME}/conf/${CT}"
		MSG="Generating file [${CF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read CL
		do
			eval echo "${CL}" >> ${CF}
		done < ${CTF}
		local MRT=${project_set[MAKEFILE_AMR]} MRF="${PNAME}/Makefile.am" MRL
		local MRTF="${GEN_PY_PRO_HOME}/conf/${MRT}"
		MSG="Generating file [${MRF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read MRL
		do
			eval echo "${MRL}" >> ${MRF}
		done < ${MRTF}
		local MST=${project_set[MAKEFILE_AMS]} MSF="${SRC}/Makefile.am" MSL
		local MSTF="${GEN_PY_PRO_HOME}/conf/${MST}"
		MSG="Generating file [${MSF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read MSL
		do
			eval echo "${MSL}" >> ${MSF}
		done < ${MSTF}
		local PYT=${project_set[PY]} PYF="${SRC}/${PNAME}.py" PYL
		local PYTF="${GEN_PY_PRO_HOME}/conf/${PYT}"
		MSG="Generating file [${PYF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read PYL
		do
			eval echo "${PYL}" >> ${PYF}
		done < ${PYTF}
		local CLT=${project_set[CHANGELOG]} CLF="${PNAME}/ChangeLog"
		local CLC=$(cat "${GEN_PY_PRO_HOME}/conf/${CLT}")
		MSG="Generating file [${CLF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		echo -e "${CLC}" > "${CLF}"
		local COT=${project_set[COPYING]} COF="${PNAME}/COPYING"
		local COC=$(cat "${GEN_PY_PRO_HOME}/conf/${COT}")
		MSG="Generating file [${COF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		echo -e "${COC}" > "${COF}"
		local AUT=${project_set[AUTHORS]} AUF="${PNAME}/AUTHORS" AUL
		local AUTF="${GEN_PY_PRO_HOME}/conf/${AUT}"
		MSG="Generating file [${AUF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read AUL
		do
			eval echo "${AUL}" >> ${AUF}
		done < ${AUTF}
		local NT=${project_set[NEWS]} NF="${PNAME}/NEWS" NL
		local FIRST_NEWS="Project created ${DATE}"
		local NTF="${GEN_PY_PRO_HOME}/conf/${NT}"
		MSG="Generating file [${NF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read NL
		do
			eval echo "${NL}" >> ${NF}
		done < ${NTF}
		local RT=${project_set[README]} RF="${PNAME}/README" RL
		local RMSG="${HASH} Readme section" RTF="${GEN_PY_PRO_HOME}/conf/${RT}"
		MSG="Generating file [${RF}]"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		while read RL
		do
			eval echo "${RL}" >> ${RF}
		done < ${RTF}
		local USRID=${config_gen_py_pro_util[UID]}
		local GRPID=${config_gen_py_pro_util[GID]}
		MSG="Set owner!"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		eval "chown -R ${USRID}.${GRPID} ${PNAME}/"
		MSG="Set permission!"
		__info_debug_message "$MSG" "$FUNC" "$GEN_PY_PRO_TOOL"
		eval "chmod -R 700 ${PNAME}/"
		MSG="Generated project ${PNAME}"
		GEN_PY_PRO_LOGGING[LOG_MSGE]="$MSG"
		GEN_PY_PRO_LOGGING[LOG_FLAG]="info"
		__logging GEN_PY_PRO_LOGGING
		__info_debug_message "Done" "$FUNC" "$GEN_PY_PRO_TOOL"
		TREE=$(which tree)
		__check_tool "${TREE}"
		STATUS=$?
		if [ $STATUS -eq $SUCCESS ]; then
			eval "${TREE} -L 3 ${PNAME}/"
		fi
		exit 0
	fi
	__usage GEN_PY_PRO_USAGE
	exit 128
}

#
# @brief   Main entry point of script tool
# @param   Value required project name
# @exitval Script tool gen_py_pro exit with integer value
#			0   - tool finished with success operation
#			127 - run tool script as root user from cli
#			128 - missing argument(s) from cli
#			129 - failed to load tool script configuration from files
#			130 - project already exist
#			131 - failed to load project set configuration from file
#
printf "\n%s\n%s\n\n" "${GEN_PY_PRO_TOOL} ${GEN_PY_PRO_VERSION}" "`date`"
__check_root
STATUS=$?
if [ $STATUS -eq $SUCCESS ]; then
	__gen_py_pro $1
fi

exit 127

