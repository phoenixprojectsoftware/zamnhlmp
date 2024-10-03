"GameMenu"
{
	"1"
	{
		"label" "console"
		"command" "engine toggleconsole"
		"notsingle" "1"
		"notmulti" "1"
	}
	"2"
	{
		"label" "resume"
		"command" "ResumeGame"
		"OnlyInGame" "1"
		"HelpText" "Return to the game."
	}
	"3"
	{
		"label" "leave game"
		"command" "Disconnect"
		"OnlyInGame" "1"
		"HelpText" "Exit to the main menu."
	}
	"4"
	{
		"label" "players"
		"command" "OpenPlayerListDialog"
		"OnlyInGame" "1"
		"HelpText" "View a list of the players currently in this server."
	}
	"5"
	{
		"label" "find games"
		"command" "OpenServerBrowser"
		"HelpText" "Opens the Server Browser."
	}
	"6"
	{
		"label" "custom game"
		"command" "OpenCreateMultiplayerGameDialog"
		"HelpText" "Create your own game and play with friends."
	}
	"7"
	{
		"label" "options"
		"command" "OpenOptionsDialog"
		"HelpText" "Tune the game to your liking."
	}
	"8"
	{
		"label" "theatre"
		"command" "OpenLoadDemoDialog"
		"notsingle" "1"
		"notmulti" "1"
		"HelpText" "View a demo."
	}
	"9"
	{
		"label" "record demo"
		"command" "engine agrecord"
		"OnlyInGame" "1"
	}
	"10"
	{
		"label" "stop recording"
		"OnlyInGame" "1"
		"command" "engine stop"
	}
	"11"
	{
		"label" "credits"
		"command" "engine map credits/Credits"
		"notsingle" "1"
		"notmulti" "1"
		"HelpText" "See who made this game."
	}
	"12"
	{
		"label" "quit"
		"command" "Quit"
		"HelpText" "Exit the game."
	}
}