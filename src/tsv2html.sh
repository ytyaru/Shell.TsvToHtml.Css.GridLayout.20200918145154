#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# TSVをHTMLに変換する。
# CreatedAt: 2020-09-18
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	ToHtml() { echo '<html>'"$1"'</html>'; }
	ToHtmlCss() { echo '<style type="text/css">'"$1"'</style>'; }
	ToHtmlCssLink() { echo '<link href="'"$APP_ROOT/res/main.css"'" rel="stylesheet" type="text/css">'; }
	ToHtmlRoom() { echo '<div id="schoolroom">'"$1"'</div>'; }
	ToHtmlDesk() { echo '<div>'"$1"'</div>'; }
	ToHtmlRuby() { echo '<ruby>'"$2"'<rt>'"$1"'</rt></ruby>'; }
	NAMES=()
	IFS=$'\n'
	for YK in $(cat -); do
		YOMI="$(echo -e "$YK" | cut -f1)"
		KAKI="$(echo -e "$YK" | cut -f2)"
		NAMES+=("$(ToHtmlDesk "$(ToHtmlRuby "$YOMI" "$KAKI")")")
	done
	HTML="$(ToHtmlCss "$(cat "$APP_ROOT/res/main.css" | tail -n +2 )")"
	HTML+="$(ToHtmlRoom "$(IFS=$'\n'; echo "${NAMES[*]}")")"
	HTML="$(ToHtml "$HTML")"
	echo -e "$HTML"
	zenity --text-info --html --title='yyyy年度　○○中学校　○年○組　座席表' --width=640 --height=300 --filename=<(echo "$HTML")
}
Run
