// Made with XBLAH's Modding tool.
// Download it at https://xblah.dev/modding-tool/

"gamemenu"
{
	"0"
	{
		"label"	"resume"
		"HelpText"	"Return to the game."
		"command"	"ResumeGame"
		"ingameorder"	"0"
		"onlyingame"	"1"
	}
	"1"
	{
		"label"	"leave game"
		"HelpText"	"Exit to the main menu."
		"command"	"Disconnect"
		"ingameorder"	"1"
		"onlyingame"	"1"
	}
	"2"
	{
		"label"	"players"
		"HelpText"	"View a list of the players currently in this server."
		"command"	"OpenPlayerListDialog"
		"ingameorder"	"2"
		"onlyingame"	"1"
	}
	"3"
	{
		"label"	"find games"
		"HelpText"	"Opens the Server Browser."
		"command"	"OpenServerBrowser"
		"ingameorder"	"3"
	}
	"4"
	{
		"label"	"custom game"
		"HelpText"	"Create your own game and play with friends."
		"command"	"OpenCreateMultiplayerGameDialog"
		"ingameorder"	"4"
	}
	"5"
	{
		"label"	"options"
		"HelpText"	"Tune the game to your liking."
		"command"	"OpenOptionsDialog"
		"ingameorder"	"5"
	}
	"6"
	{
		"label"	"theatre"
		"HelpText"	"View a demo."
		"command"	"OpenLoadDemoDialog"
		"ingameorder"	"6"
	}
	"7"
	{
		"label"	"credits"
		"HelpText"	"See who made this game."
		"command"	"engine map credits/Credits"
		"ingameorder"	"7"
	}
	"8"
	{
		"label"	"quit"
		"HelpText"	"Exit the game."
		"command"	"Quit"
		"ingameorder"	"8"
	}
}