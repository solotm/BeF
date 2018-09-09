// Includes
#include <sourcemod>

// Compiler Settings
#pragma semicolon 1
#pragma tabsize 0

// Defines
#define Tag "[SM]" // Chat Prefix
#define W "\x01" // White
#define R "\x02" // Red
#define G "\x04" // Green
#define LG "\x06" // Light Green
#define Y "\x09" // Yellow


public Plugin myinfo =
{
	name = "EndRoundMessage",
	author = "Mr.Artos",
	description = "Displays a informational message at every round!",
	version = "1.0",
	url = "http://steamcommunity.com/groups/BeFT"
};

public void OnPluginStart()
{
	// Hooks
	HookEvent("game_end", Event_GemeEnd);
}

public Action:Event_GemeEnd( Handle:event, const String:name[], bool:dontBroadcast )
{
	PrintToChatAll("\x03 *****");
	PrintToChatAll("\x03 Steam group: http://steamcommunity.com/groups/BeFT");
	PrintToChatAll("\x03 Ознакомьтесь, пожалуйста, с правилами сервера!!!");
	PrintToChatAll("\x03 Discord: https://discord.gg/BnQAECH");
	PrintToChatAll("\x03 *****");
}

