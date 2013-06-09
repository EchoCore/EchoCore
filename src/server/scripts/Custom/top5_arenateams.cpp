/*******************************************************************************************
*  ______     _            _____                                                           *
* |  ____|   | |          / ____|                                                          *
* | |__   ___| |__   ___ | |     ___  _ __ ___                                             *
* |  __| / __| '_ \ / _ \| |    / _ \| '__/ _ \                                            *
* | |___| (__| | | | (_) | |___| (_) | | |  __/                                            *
* |______\___|_| |_|\___/ \_____\___/|_|  \___|                                            *
*                               or any other files are protected. You cannot re-release    * 
*                               anywhere unless you were given permission.                 *
*                           (C) GaryMoveOut 2013. All rights reserved.                     *
********************************************************************************************/

#include "ScriptPCH.h"
using namespace std;  

/* Basic Menu */
#define Menu_Whisp     "Information"
#define Notification   "5 Besten Arena Teeams"
#define M_Whisper      "Die 5 besten Arenateams werden hier aufgelistet."
#define leave          "Bye"

/* Class E_Menu */
#define E_TWO      "Liste 2vs2"
#define E_THREE      "Liste 3vs3"
#define E_FIVE       "Liste 5vs5"

/* Top 5 Message */
#define M_TWO      "Die 5 besten 2vs2 Teams sind:"
#define M_THREE    "Die 5 besten 3vs3 Teams sind:"
#define M_FIVE     "Die 5 besten 5vs5 Teams sind:"

class top5_arenateams : public CreatureScript
{
    public:
        top5_arenateams() : CreatureScript("top5_arenateams") { }

        bool OnGossipHello(Player* player, Creature* creature)
        {
            player->ADD_GOSSIP_ITEM(0, Menu_Whisp, GOSSIP_SENDER_MAIN, 0);
            player->ADD_GOSSIP_ITEM(1, E_TWO, GOSSIP_SENDER_MAIN, 1);
            player->ADD_GOSSIP_ITEM(1, E_THREE, GOSSIP_SENDER_MAIN, 2);
            player->ADD_GOSSIP_ITEM(1, E_FIVE, GOSSIP_SENDER_MAIN, 3);
            player->SEND_GOSSIP_MENU(1, creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action)
        {
            if (sender == GOSSIP_SENDER_MAIN)
            {
                player->PlayerTalkClass->ClearMenus();

                switch (action)
                {
                    case 5:
                        player->ADD_GOSSIP_ITEM(0, Menu_Whisp, GOSSIP_SENDER_MAIN, 0);
                        player->ADD_GOSSIP_ITEM(1, E_TWO, GOSSIP_SENDER_MAIN, 1);
                        player->ADD_GOSSIP_ITEM(1, E_THREE, GOSSIP_SENDER_MAIN, 2);
                        player->ADD_GOSSIP_ITEM(1, E_FIVE, GOSSIP_SENDER_MAIN, 3);
                        player->SEND_GOSSIP_MENU(1, creature->GetGUID());
                        break;
                    case 4:
                        player->PlayerTalkClass->SendCloseGossip();
                        break;
                    case 0:
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Whisper);
                        player->PlayerTalkClass->SendCloseGossip();
                        break;
                    // 2vs2
                    case 1:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, rating, seasonGames, seasonWins FROM arena_team WHERE type = '2' ORDER BY rating DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_TWO);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 rating = fields[1].GetUInt32();
                            uint32 seasionGames = fields[2].GetUInt32();
                            uint32 seasonWins = fields[3].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Teamname: %s, Rating: %u, Spiele: %u, Wins: %u", name.c_str(), rating, seasionGames, seasonWins);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // 3vs3
                    case 2:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, rating, seasonGames, seasonWins FROM arena_team WHERE type = '3' ORDER BY rating DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_THREE);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 rating = fields[1].GetUInt32();
                            uint32 seasionGames = fields[2].GetUInt32();
                            uint32 seasonWins = fields[3].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Teamname: %s, Rating: %u, Spiele: %u, Wins: %u", name.c_str(), rating, seasionGames, seasonWins);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // 5vs5
                    case 3:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, rating, seasonGames, seasonWins FROM arena_team WHERE type = '5' ORDER BY rating DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_FIVE);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 rating = fields[1].GetUInt32();
                            uint32 seasionGames = fields[2].GetUInt32();
                            uint32 seasonWins = fields[3].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Teamname: %s, Rating: %u, Spiele: %u, Wins: %u", name.c_str(), rating, seasionGames, seasonWins);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                }
            }
            return true;
        }
};

void AddSC_top5_arenateams()
{
    new top5_arenateams();
}