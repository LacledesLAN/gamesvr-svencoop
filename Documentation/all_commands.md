# List of all console variables (CVARs) for Sven Co-op

## Credits

Taken from [Console/Commands on wiki.svencoop.com](https://wiki.svencoop.com/Console/Commands).

## Console/Commands

| Command           | Source  | Category | Cheat | Description |
| :---------------- | :------ | :------- | :---- | :--- |
| _refresh          | Engine  | System   |  |  |
| _restart          | Engine  | System   |  |  |
| _set_vid_level    | Engine  | System   |  |  |
| _setaddons_folder | Engine  | System   |  |  |
| _setgamedir       | Engine  | System   |  |  |
| _sethdmodels      | Engine  | System   |  |  |
| _setrenderer | Engine | System |  |
| _setvideomode | Engine | System |  |
| +alt1 | Client | Controls |  | tertiary attack
| +attack | Client | Controls |  | primary attack
| +attack2 | Client | Controls |  | secondary attack
| +back | Client | Controls |  | move backward
| +break | Client |  |  | Unused: This command has no effect.
| +camdistance |  |  |  |
| +camin |  |  |  |
| +cammousemove |  |  |  |
| +camout |  |  |  |
| +campitchdown |  |  |  |
| +campitchup |  |  |  |
| +camyawleft |  |  |  |
| +camyawright |  |  |  |
| +commandmenu |  |  |  |
| +duck | Client | Controls |  | duck
| +forward | Client | Controls |  | move forward
| +graph | Client, Engine | HUD, Network graph |  | Show network graph (mode 2).
| +inventory |  |  |  |
| +jlook |Client |Controls
| +jump |Client |Controls ||jump
| +klook |Client |Controls
| +left |Client |Controls ||turn left
| +lookdown |Client |Controls
| +lookup |Client |Controls
| +mlook |Client |Controls
| +movedown |Client |Controls
| +moveleft |Client |Controls
| +moveright |Client |Controls
| +moveup |Client |Controls
| +reload |Client |Controls ||reload current weapon
| +right |Client |Controls ||turn right
| +score |Client |HUD ||show the scoreboard
| +showscores |Client |HUD ||show the scoreboard
| +speed |Client |Controls ||walk
| +strafe |Client |Controls
| +use |Client |Controls
| +voicerecord
| addip
| addvotemap
| alias
| appenddemo
| as_command |Server |Angelscript ||Executes an Angelscript console command.
| as_commandstats |Server |Angelscript ||Displays Angelscript console command statistics.
| as_dumphooks |Server |Angelscript ||Outputs all Angelscript hooks to a file. Usage: as_dumphooks <filename> (in the game directory).
| as_execute |Server |Angelscript ||Executes arbitrary Angelscript code. Usage: as_execute <module name(optional; default: MapModule)> "<code>".
| as_fs_dumpfilesystem |Server |Angelscript ||Outputs the Angelscript file system and blacklist to a file. Usage: as_fs_dumpfilesystem <filename>.
| as_fs_output_openfile |Server |Angelscript ||Whether or not to output successful OpenFile calls. CVAR???
| as_fs_quota_usage |Server |Angelscript ||Reports the current usage state of the Angelscript File System Quota.
| as_fs_validate_file_usage |Server |Angelscript ||Validates the quota file list; files removed externally are removed from the list.
| as_reloadplugin 	Server 	Angelscript 		Reloads a plugin that is in the list of plugins. Usage: as_reloadplugin <plugin_name> to reload a plugin.
| as_reloadplugins 	Server 	Angelscript 		Reloads all plugins from the plugin list file.
| as_removeallcommands 	Server 	Angelscript 		Removes all commands from the Angelscript console command system. Debug only.
| as_removeplugin 	Server 	Angelscript 		Removes a plugin from the plugin list. Usage: as_removeplugin <plugin name> to remove a plugin.
| as_removeplugins 	Server 	Angelscript 		Removes all plugins.
| autosave
| banid
| bind 	Engine 	Scripts 		Bind one or more command(s) or variable settings to a key. Binding a key to any +command also automatically binds the release of that key to the -command (see alias). Usage:
|
| bind <key> <command>
| bind <key> "<command1>;<command2>..." (multiple commands enclosed in quotes and separated by semicolons)
| cam_toggle_followaim
| cancelselect 	Client 	HUD, Weapon Selection 		cancel weapon selection
| cd 	Engine 	Sound 		Control CD/MP3 player. Usage:
|
| cd on - no effect???
| cd off - no effect???
| cd reset - reset mapping of CD tracks
| cd remap <track_id1> <track_id2> ... - remap CD tracks
| cd close - close CD tray
| cd mp3info - print info about current MP3 track
| cd mp3track <track_id> - play MP3 track
| cd play <track_id> - play CD track
| cd playfile <file_name> - play MP3 file
| cd loop <track_id> - loop CD track
| cd loopfile <file_name> - loop MP3 file
| cd stop - stop CD playback
| cd fadeout - fade out the currently playing track. Fade out time defined by the MP3FadeTime CVAR.
| cd pause - pause CD playback
| cd resume - resume CD playback
| cd eject - eject CD tray
| cd info - print status information
| centerview
| changelevel
| changelevel2
| cl_flushsoundcache
| cl_flushsoundcache_force
| cl_messages
| cl_stopsound 	Client 	Sound
| clear
| clearvotemaplist
| cmd
| cmdlist
| condebug
| condump
| connect
| contimes
| cvarlist
| DecVol 	Client 	HUD, Media player 		decrease media player volume
| delta_clear
| delta_stats
| demos
| disconnect
| dlfile
| dropclient
| echo
| endmovie
| entities
| envmap
| escape
| exec
| exit 	Engine 	System 		Quit game or server without confirmation. See also quit.
| firstperson
| flush
| fly 	Engine 	Developer 	Yes 	Changes player's move type to MOVETYPE_FLY.
|
| Obsolete: This command doesn't work correctly in GoldSrc/Svengine. Use cl_noclip instead.
| Fog
| force_centerview
| ForceCloseCommandMenu
| fs_dump_paths 	Engine 	Filesystem
| fs_warning_level 	Engine 	Filesystem
| fullinfo
| fullserverinfo
| fullupdate
| gamedir
| gg
| gl_dump 	Engine 	Rendering
| gl_dumpaamodes 	Engine 	Rendering
| gl_info 	Engine 	Rendering
| gl_texels 	Engine 	Rendering
| gl_texturemode 	Engine 	Rendering
| god 	Engine 	Developer 	Yes 	Toggle god mode. Makes the player invincible when enabled.
|
| Obsolete: Use cl_godmode instead.
| heartbeat
| hideconsole
| hpkextract
| hpklist
| hpkremove
| hpkval
| httpstop
| impulse 	Client 		* 	See Impulse commands.
| IncVol 	Client 	HUD, Media player 		increase media player volume
| interp
| inventory
| invnext 	Client 	HUD, Weapon Selection 		select next weapon
| invprev 	Client 	HUD, Weapon Selection 		select previous weapon
| joyadvancedupdate
| kick
| kicksteamid
| kill
| LastSong 	Client 	HUD, Media player 		last song
| list 	Engine 	Networking 		print list of local servers to the console; use slist to search for servers
| listdemo
| listid
| listip
| load
| localinfo
| log
| log_commands
| logaddress
| logaddress_add
| logaddress_del
| logaddress_list
| map
| maps
| maxplayers
| mcache
| MEDIAHUD 	Client 	HUD, Media player
| MediaPlayer 	Client 	HUD, Media player 		open media player
| MediaTime 	Client 	HUD, Media player
| messagemode
| messagemode2
| missionbriefing
| motd
| motd_write
| mp3
| new
| NextSong 	Client 	HUD, Media player 		next song
| noclip 	Engine 	Developer 	Yes 	Toggle clipping mode. When clipping disabled (noclip active), you can walk through walls and fly. Requires sv_cheats 255 in multiplayer.
|
| Obsolete: Use cl_noclip instead.
| notarget 	Engine 	Developer 	Yes 	Toggle notarget mode. NPCs will ignore the player when enabled.
|
| Obsolete: Use cl_notarget instead.
| npc_moveto
| pause 	Engine 	Game 		Pause game. Requires pausable 1.
| PauseSong 	Client 	HUD, Media player 		pause song
| ping
| pingservers
| play
| playdemo 	Engine 	Demo 		play a demo; Usage: playdemo <demo_name>
| PlayMedia 	Client 	HUD, Media player 		play song
| playvol
| pointfile
| quit 	Engine 	System 		Quit game or server without confirmation. See also exit.
| RandomSong 	Client 	HUD, Media player 		random song
| rcon
| rebuildsoundcachefile
| reconnect
| record 	Engine 	Demo 		start recording a demo, see stop; usage: record <demo_name>
| reload
| reloadadminlist
| RelPls 	Client 	HUD, Media player 		reload playlist
| removedemo
| removeid
| removeip
| removevotemap
| resetrcon
| restart
| retry
| save
| say
| say_team
| screenshot 	Engine 	Rendering 		take a screenshot (TGA)
| sendents
| sendres
| serverinfo
| servermotd
| setdemoinfo
| setinfo
| setmaster
| setpause
| showinfo
| shutdownserver
| sizedown 	Engine 	Rendering 		Obsolete: Decrease view size (decreases the viewsize CVAR). Leftover from the software renderer build.
|
| Removed in Sven Co-op 5.17.
| sizeup 	Engine 	Rendering 		Obsolete: Increase view size (increases the viewsize CVAR). Leftover from the software renderer build.
|
| Removed in Sven Co-op 5.17.
| skybox
| slist 	Engine 	Networking 		search for local servers; use list to print the list
| slot1 	Client 	HUD, Weapon Selection 		select weapon group 1 (or menu item 1)
| slot2 	Client 	HUD, Weapon Selection 		select weapon group 2 (or menu item 2)
| slot3 	Client 	HUD, Weapon Selection 		select weapon group 3 (or menu item 3)
| slot4 	Client 	HUD, Weapon Selection 		select weapon group 4 (or menu item 4)
| slot5 	Client 	HUD, Weapon Selection 		select weapon group 5 (or menu item 5)
| slot6 	Client 	HUD, Weapon Selection 		select weapon group 6 (or menu item 6)
| slot7 	Client 	HUD, Weapon Selection 		select weapon group 7 (or menu item 7)
| slot8 	Client 	HUD, Weapon Selection 		select weapon group 8 (or menu item 8)
| slot9 	Client 	HUD, Weapon Selection 		select weapon group 9 (or menu item 9)
| slot10 	Client 	HUD, Weapon Selection 		select weapon group 10 (or menu item 10)
| snapshot 	Engine 	Rendering 		take a screenshot (BMP)
| snapto
| soundfade
| soundinfo
| soundlist
| spawn
| speak
| spec_pos
| spk
| startdemos 	Engine 	Demo
| startmovie
| stat
| stats
| status
| stop 	Engine 	Demo 		stop recording a demo, see record
| stopdemo 	Engine 	Demo 		Stop playing a demo.
| StopSong 	Client 	HUD, Media player 		stop song
| stopsound
| string_memusage
| stuffcmds
| swapdemo
| teammenu
| tell
| thirdperson
| timedemo
| timerefresh
| toggle_classic_mode 	Server 	Game 		Toggle Classic Mode.
| toggle_survival_mode 	Server 	Game 		Toggle Survival Mode.
| toggleconsole
| unbind 	Engine 	Scripts 		Remove binding to key. Usage: unbind <key>
| unbindall 	Engine 	Scripts 		Remove all key bindings.
| unpause
| upload
| user
| users
| uzi_gilded
| version 	Engine 	System 		Print engine version.
| vgui_closeall
| vgui_votemap
| viewframe 	Engine 	Developer 		Obsolete: Change animation frame of viewthing entity in current level. Leftover from Quake.
|
| Removed in Sven Co-op 5.17.
| viewmodel 	Engine 	Developer 		Obsolete: Change model of viewthing entity in current level. Leftover from Quake.
|
| Removed in Sven Co-op 5.17.
| viewnext 	Engine 	Developer 		Obsolete: Change to next animation frame of viewthing entity in current level. Leftover from Quake.
|
| Removed in Sven Co-op 5.17.
| viewprev 	Engine 	Developer 		Obsolete: Change to previous animation frame of viewthing entity in current level. Leftover from Quake.
|
| Removed in Sven Co-op 5.17.
| voice_showbanned
| voteban_remove
| voteban_remove_all
| voteban_show
| votemenu
| wait 	Engine 	Scripts 		Make script execution wait for next frame.
| waveplaylen
| writecfg
| writeid
| writeip


## Client-Side Only
