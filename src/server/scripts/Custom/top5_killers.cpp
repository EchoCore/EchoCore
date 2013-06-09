/*******************************************************************************************
*              ______                   ______                   _____                     *
*             / _____)                 |  ___ \                 / ___ \       _            *
*            | /  ___  ____  ____ _   _| | _ | | ___ _   _ ____| |   | |_   _| |_          *
*            | | (___)/ _  |/ ___) | | | || || |/ _ \ | | / _  ) |   | | | | |  _)         *
*            | \____/( ( | | |   | |_| | || || | |_| \ V ( (/ /| |___| | |_| | |__         *
*             \_____/ \_||_|_|    \__  |_||_||_|\___/ \_/ \____)\_____/ \____|\___)        *
*                                (____/                                                    *
*                               or any other files are protected. You cannot re-release    * 
*                               anywhere unless you were given permission.                 *
*                           (C) GaryMoveOut 2013. All rights reserved.                     *
********************************************************************************************/

#include "ScriptPCH.h"
using namespace std;  

/* Basic Menu */
#define Menu_Whisp     "Information"
#define Notification   "5 Besten PvP Spieler"
#define M_Whisper      "Die 5 besten PvP-Spieler der jeweiligen Klasse werden hier aufgelistet. Gewertet wird das Ranking nach der Anzahl an Todesstößen, die ein Spieler gemacht hat."
#define leave          "Bye"

/* Class E_Menu */
#define E_Warrior      "Liste der 5 besten Krieger"
#define E_Paladin      "Liste der 5 besten Paladine"
#define E_Hunter       "Liste der 5 besten Jäger"
#define E_Rogue        "Liste der 5 besten Schurken"
#define E_Priest       "Liste der 5 besten Priester"
#define E_Shaman       "Liste der 5 besten Schamanen"
#define E_Mage         "Liste der 5 besten Magier"
#define E_Warlock      "Liste der 5 besten Hexenmeister"
#define E_Druid        "Liste der 5 besten Druiden"
#define E_Death_knight "Liste der 5 besten Todesritter"

/* Top 5 Message */
#define M_Warrior      "Die 5 besten Krieger sind:"
#define M_Paladin      "Die 5 besten Paladine sind:"
#define M_Hunter       "Die 5 besten Jäger sind:"
#define M_Rogue        "Die 5 besten Schurken sind:"
#define M_Priest       "Die 5 besten Priester sind:"
#define M_Shaman       "Die 5 besten Schamanen sind:"
#define M_Mage         "Die 5 besten Magier sind:"
#define M_Warlock      "Die 5 besten Hexenmeister sind:"
#define M_Druid        "Die 5 besten Druiden sind:"
#define M_Death_knight "Die 5 besten Todesritter sind:"

class top5_killers : public CreatureScript
{
    public:
        top5_killers() : CreatureScript("top5_killers") { }

        bool OnGossipHello(Player* player, Creature* creature)
        {
            player->ADD_GOSSIP_ITEM(0, Menu_Whisp, GOSSIP_SENDER_MAIN, 0);
            player->ADD_GOSSIP_ITEM(1, E_Warrior, GOSSIP_SENDER_MAIN, 1);
            player->ADD_GOSSIP_ITEM(1, E_Paladin, GOSSIP_SENDER_MAIN, 2);
            player->ADD_GOSSIP_ITEM(1, E_Hunter, GOSSIP_SENDER_MAIN, 3);
            player->ADD_GOSSIP_ITEM(1, E_Rogue, GOSSIP_SENDER_MAIN, 4);
            player->ADD_GOSSIP_ITEM(1, E_Priest, GOSSIP_SENDER_MAIN, 5);
            player->ADD_GOSSIP_ITEM(1, E_Shaman, GOSSIP_SENDER_MAIN, 6);
            player->ADD_GOSSIP_ITEM(1, E_Mage, GOSSIP_SENDER_MAIN, 7);
            player->ADD_GOSSIP_ITEM(1, E_Warlock, GOSSIP_SENDER_MAIN, 8);
            player->ADD_GOSSIP_ITEM(1, E_Druid, GOSSIP_SENDER_MAIN, 9);
            player->ADD_GOSSIP_ITEM(1, E_Death_knight, GOSSIP_SENDER_MAIN, 10);
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
                    case 12:
                        player->ADD_GOSSIP_ITEM(0, Menu_Whisp, GOSSIP_SENDER_MAIN, 0);
                        player->ADD_GOSSIP_ITEM(1, E_Warrior, GOSSIP_SENDER_MAIN, 1);
                        player->ADD_GOSSIP_ITEM(1, E_Paladin, GOSSIP_SENDER_MAIN, 2);
                        player->ADD_GOSSIP_ITEM(1, E_Hunter, GOSSIP_SENDER_MAIN, 3);
                        player->ADD_GOSSIP_ITEM(1, E_Rogue, GOSSIP_SENDER_MAIN, 4);
                        player->ADD_GOSSIP_ITEM(1, E_Priest, GOSSIP_SENDER_MAIN, 5);
                        player->ADD_GOSSIP_ITEM(1, E_Shaman, GOSSIP_SENDER_MAIN, 6);
                        player->ADD_GOSSIP_ITEM(1, E_Mage, GOSSIP_SENDER_MAIN, 7);
                        player->ADD_GOSSIP_ITEM(1, E_Warlock, GOSSIP_SENDER_MAIN, 8);
                        player->ADD_GOSSIP_ITEM(1, E_Druid, GOSSIP_SENDER_MAIN, 9);
                        player->ADD_GOSSIP_ITEM(1, E_Death_knight, GOSSIP_SENDER_MAIN, 10);
                        player->SEND_GOSSIP_MENU(1, creature->GetGUID());
                        break;
                    case 11:
                        player->PlayerTalkClass->SendCloseGossip();
                        break;
                    case 0:
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Whisper);
                        player->PlayerTalkClass->SendCloseGossip();
                        break;
                    // Warrior
                    case 1:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '1' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Warrior);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Paladin
                    case 2:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '2' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Paladin);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Hunter
                    case 3:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '3' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Hunter);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Rogue
                    case 4:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '4' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Rogue);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Priest
                    case 5:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '5' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Priest);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Shaman
                    case 6: 
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '7' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Shaman);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Mage
                    case 7:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '8' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Mage);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Warlock
                    case 8:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '9' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                           return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Warlock);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Druid
                    case 9:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '11' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Druid);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
                            ChatHandler(player->GetSession()).PSendSysMessage(msg);
                        }
                        while(result->NextRow());
                        player->SaveToDB();
                        player->PlayerTalkClass->SendCloseGossip();
                    }
                    break;
                    // Death knight
                    case 10:
                    {
                        QueryResult result = CharacterDatabase.Query("SELECT name, totalKills FROM characters WHERE class = '6' ORDER BY totalKills DESC LIMIT 5");
                        if (!result)
                            return false;

                        Field * fields = NULL;
                        ChatHandler(player->GetSession()).PSendSysMessage(M_Death_knight);
                        do
                        {
                            fields = result->Fetch();
                            string name = fields[0].GetString();
                            uint32 totalKills = fields[1].GetUInt32();
                            char msg[250];
                            snprintf(msg, 250, "Name: %s, Kills: %u", name.c_str(), totalKills);
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

void AddSC_top5_killers()
{
    new top5_killers();
}