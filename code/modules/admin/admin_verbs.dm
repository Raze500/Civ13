//admin verb groups - They can overlap if you so wish. Only one of each verb will exist in the verbs list regardless
var/list/admin_verbs_default = list(
	/client/proc/cmd_staff_say,			//admin-only ooc chat
	/datum/admins/proc/show_player_panel,	//shows an interface for individual players, with various links (links require additional flags,
	/client/proc/player_panel,
	/client/proc/deadmin_self,			//destroys our own admin datum so we can play as a regular player,
	/client/proc/hide_verbs,			//hides all our adminverbs,
	/client/proc/hide_most_verbs,		//hides all our hideable adminverbs,
	/client/proc/debug_variables,		//allows us to -see- the variables of any instance in the game. +VAREDIT needed to modify,
	/client/proc/cmd_mentor_check_new_players,
	/client/proc/see_soldiers,
	/client/proc/see_bug_reports,
	/client/proc/see_suggestions,
	/client/proc/see_world_realtime,
	/client/proc/see_processes,
	/client/proc/giveruntimelog,		//allows us to give access to runtime logs to somebody,
	/client/proc/getserverlog,			//allows us to fetch server logs (diary) for other days,
	/client/proc/getruntimelog                     // allows us to access runtime logs to somebody,
	)
var/list/admin_verbs_admin = list(
	/client/proc/add_to_server_whitelist,
	/client/proc/add_to_super_whitelist,
	/client/proc/remove_from_server_whitelist,
	/client/proc/remove_from_super_whitelist,
	/client/proc/view_server_whitelist,
	/client/proc/view_super_whitelist,
	/client/proc/eject_unwhitelisted,
	/client/proc/enable_disable_server_whitelist,
	/client/proc/player_panel_new,		//shows an interface for all players, with links to various panels,
	/client/proc/invisimin,				//allows our mob to go invisible/visible,
	/datum/admins/proc/toggleenter,		//toggles whether people can join the current game,
	/datum/admins/proc/toggleguests,	//toggles whether guests can join the current game,
	/client/proc/admin_ghost,			//allows us to ghost/reenter body at will,
	/client/proc/toggle_view_range,		//changes how far we can see,
	/datum/admins/proc/view_txt_log,	//shows the server log (diary) for today,
	/client/proc/cmd_admin_pm_context,	//right-click adminPM interface,
	/client/proc/cmd_admin_pm_panel,	//admin-pm list,
	/client/proc/cmd_admin_subtle_message,	//send an message to somebody as a 'voice in their head',
	/client/proc/cmd_admin_delete,		//delete an instance/object/mob/etc,
	/client/proc/cmd_admin_get,
	/client/proc/cmd_admin_check_contents,	//displays the contents of an instance,
	/client/proc/Getmob,				//teleports a mob to our location,
	/client/proc/Getkey,				//teleports a mob with a certain ckey to our location,
	/client/proc/cmd_admin_direct_narrate,	//send text directly to a player with no padding. Useful for narratives and fluff-text,
	/client/proc/cmd_admin_world_narrate,	//sends text to all players with no padding,
	/client/proc/admin_memo,			//admin memo system. show/delete/write. +SERVER needed to delete admin memos of others,
	/client/proc/player_memo,
	/client/proc/dsay,					//talk in deadchat using our ckey/fakekey,
//	/client/proc/toggle_hear_deadcast,	//toggles whether we hear deadchat,
	/client/proc/investigate_show,		//various admintools for investigation. Such as a singulo grief-log,
	/client/proc/secrets,
	/datum/admins/proc/toggleooc,		//toggles ooc on/off for everyone,
	/datum/admins/proc/togglelooc,		//toggles looc on/off for everyone,
	/datum/admins/proc/toggleoocdead,	//toggles ooc on/off for everyone who is dead,
	/datum/admins/proc/toggledsay,		//toggles dsay on/off for everyone,
	/client/proc/game_panel,			//game panel, allows to change game-mode etc,
	/datum/admins/proc/PlayerNotes,
	/datum/admins/proc/show_player_info,
	/client/proc/free_slot,			//frees slot for chosen job,
	/client/proc/cmd_admin_change_custom_event,
	///client/proc/check_customitem_activity,
	/client/proc/allow_character_respawn,    // Allows a ghost to respawn ,

	/client/proc/change_human_appearance_admin,	// Allows an admin to change the basic appearance of human-based mobs ,
	/client/proc/change_human_appearance_self,	// Allows the human-based mob itself change its basic appearance ,
	/client/proc/view_chemical_reaction_logs,
	/client/proc/allow_join_ruforce,
	/client/proc/allow_join_geforce,
	/client/proc/show_battle_report,
	/client/proc/see_battle_report,
	/client/proc/end_all_grace_periods,
	/client/proc/reset_all_grace_periods,
	/datum/admins/proc/paralyze_mob,
	/client/proc/removeEmptyCases,
	/client/proc/removeHalfEmptyCases,
	/client/proc/removeAllBlood,
	/client/proc/toggle_jobs,
	/client/proc/toggle_factions,
	/client/proc/forcibly_enable_faction

)
var/list/admin_verbs_ban = list(
	/client/proc/quickBan_search,
	/client/proc/quickBan_person
	)

var/list/admin_verbs_sounds = list(
	/client/proc/play_local_sound,
	/client/proc/play_sound,
	/client/proc/play_server_sound
	)
var/list/admin_verbs_fun = list(
	/client/proc/object_talk,
	/client/proc/cmd_admin_dress,
	/client/proc/cmd_admin_gib_self,
	/client/proc/cmd_admin_crush_self,
	/client/proc/drop_bomb,
	/client/proc/make_sound,
	/client/proc/editappear,
	/client/proc/randomize_lobby_music,
	/client/proc/show_custom_roundstart_tip,
	/client/proc/reset_custom_roundstart_tip
	)

var/list/admin_verbs_spawn = list(
	/datum/admins/proc/spawn_atom,		// allows us to spawn instances,
	/datum/admins/proc/spawn_player_as_job,
	/client/proc/respawn_character
	)

var/list/admin_verbs_server = list(
	/datum/admins/proc/capture_map,
	/client/proc/ToRban,
	/datum/admins/proc/startnow,
	/datum/admins/proc/restart,
	/datum/admins/proc/jojorestart,
	/datum/admins/proc/delay,
	/client/proc/trigger_roundend,
	/client/proc/toggle_round_ending,
	/client/proc/toggle_log_hrefs,
	/datum/admins/proc/immreboot,
	/client/proc/cmd_admin_delete,		// delete an instance/object/mob/etc,
	/client/proc/cmd_debug_del_all,
	/datum/admins/proc/adrev,
	/datum/admins/proc/adspawn,
	/datum/admins/proc/adjump,
//	/client/proc/check_customitem_activity,
	/client/proc/nanomapgen_DumpImage
	)
var/list/admin_verbs_debug = list(
	/client/proc/cmd_admin_list_open_jobs,
	/client/proc/Debug2,
	/client/proc/debug_controller,
	/client/proc/cmd_debug_mob_lists,
	/client/proc/cmd_admin_delete,
	/client/proc/cmd_debug_del_all,
	/client/proc/reload_admins,
	/client/proc/restart_controller,
	/client/proc/enable_debug_verbs,
	/client/proc/callproc,
	/client/proc/callproc_target,
//	/client/proc/SDQL_query,
//	/client/proc/SDQL2_query,
	/client/proc/Jump,
	/client/proc/jumptomob,
	/client/proc/jumptocoord,
	/client/proc/dsay,
	/client/proc/check_positions,
	/client/proc/change_time_of_day,
	/client/proc/randomly_change_weather,
	/client/proc/randomly_modify_weather
	)

var/list/admin_verbs_paranoid_debug = list(
	/client/proc/callproc,
	/client/proc/callproc_target,
	/client/proc/debug_controller
	)

var/list/admin_verbs_possess = list(
	/proc/possess,
	/proc/release
	)

var/list/admin_verbs_permissions = list(
	/client/proc/edit_admin_permissions
	)
var/list/admin_verbs_rejuv = list(
	/client/proc/respawn_character
	)

//verbs which can be hidden - needs work
var/list/admin_verbs_hideable = list(
	/client/proc/deadmin_self,
//	/client/proc/deadchat,
	/datum/admins/proc/toggleenter,
	/datum/admins/proc/toggleguests,
	/datum/admins/proc/announce,
	/client/proc/colorooc,
	/client/proc/admin_ghost,
	/client/proc/toggle_view_range,
	/datum/admins/proc/view_txt_log,
	/client/proc/cmd_admin_subtle_message,
	/client/proc/cmd_admin_check_contents,
	/client/proc/admin_call_shuttle,
	/client/proc/admin_cancel_shuttle,
	/client/proc/cmd_admin_direct_narrate,
	/client/proc/cmd_admin_world_narrate,
	/client/proc/play_local_sound,
	/client/proc/play_sound,
	/client/proc/play_server_sound,
	/client/proc/object_talk,
	/client/proc/cmd_admin_dress,
	/client/proc/cmd_admin_gib_self,
	/client/proc/cmd_admin_crush_self,
	/client/proc/drop_bomb,
	/client/proc/make_sound,
	/client/proc/ToRban,
	/datum/admins/proc/startnow,
	/datum/admins/proc/restart,
	/datum/admins/proc/delay,
	/datum/admins/proc/toggleaban,
	/client/proc/toggle_log_hrefs,
	/datum/admins/proc/immreboot,
	/datum/admins/proc/toggleAI,
	/datum/admins/proc/adrev,
	/datum/admins/proc/adspawn,
	/datum/admins/proc/adjump,
	/client/proc/restart_controller,
	/client/proc/cmd_admin_list_open_jobs,
	/client/proc/callproc,
	/client/proc/callproc_target,
	/client/proc/Debug2,
	/client/proc/reload_admins,
	/client/proc/debug_controller,
	/client/proc/cmd_debug_mob_lists,
	/client/proc/cmd_debug_del_all,
	/client/proc/enable_debug_verbs,
//	/client/proc/roll_dices,
	/proc/possess,
	/proc/release
	)
var/list/admin_verbs_mod = list(
	/client/proc/goto_adminzone,
	/client/proc/who_invisimin,				//allows our mob to go invisible/visible in staffwho
	/client/proc/cmd_admin_rejuvenate,
	/client/proc/jumptocoord,			//we ghost and jump to a coordinate,
	/client/proc/Jump,
	/client/proc/jumptokey,				//allows us to jump to the location of a mob with a certain ckey,
	/client/proc/jumptomob,				//allows us to jump to a specific mob,
	/client/proc/jumptoturf,			//allows us to jump to a specific turf,
	/client/proc/cmd_admin_pm_context,	// right-click adminPM interface,
	/client/proc/cmd_admin_pm_panel,	// admin-pm list,
	/client/proc/debug_variables,		// allows us to -see- the variables of any instance in the game.,
	/datum/admins/proc/PlayerNotes,
	/client/proc/admin_ghost,			// allows us to ghost/reenter body at will,
	/datum/admins/proc/show_player_info,
	/client/proc/player_panel_new,
	/client/proc/dsay,
	/datum/admins/proc/announce,		//priority announce something to all clients.,
	/datum/admins/proc/show_player_panel,
	/client/proc/cmd_admin_subtle_message, // send an message to somebody as a 'voice in their head',
	/datum/admins/proc/paralyze_mob,
	/client/proc/admin_memo,			//admin memo system. show/delete/write. +SERVER needed to delete admin memos of others,
	/client/proc/player_memo,
	/client/proc/game_panel,			//game panel, allows to change game-mode etc,
	/client/proc/allow_join_ruforce,
	/client/proc/allow_join_geforce,
	/client/proc/show_battle_report,
	/client/proc/allow_rjoin_geforce,
	/client/proc/allow_rjoin_ruforce,
	/client/proc/force_reinforcements_geforce,
	/client/proc/force_reinforcements_ruforce,
	/client/proc/message_germans,
	/client/proc/message_russians,
	/client/proc/message_SS,
	/client/proc/message_paratroopers,
	/client/proc/message_civilians,
	/client/proc/message_partisans,
	/client/proc/send_german_train,
	/client/proc/toggle_german_civilian_mode,
	/client/proc/toggle_soviet_civilian_mode,
	/client/proc/toggle_respawn_delays,
	/client/proc/open_armory_doors,
	/client/proc/close_armory_doors,
	/client/proc/create_crate
)

var/list/admin_verbs_mentor = list(
	/client/proc/cmd_admin_pm_context,
	/client/proc/cmd_admin_pm_panel,
	/datum/admins/proc/PlayerNotes,
	/client/proc/admin_ghost,
	/datum/admins/proc/show_player_info,
//	/client/proc/dsay,
	/client/proc/cmd_admin_subtle_message
)

var/list/admin_verbs_manager = list(
	/client/proc/reset_roundstart_autobalance,
	/client/proc/toggle_BYOND_hub_visibility,
	/client/proc/toggle_playing,
	/client/proc/start_mapswap_vote
)

var/list/admin_verbs_host = list(
	/client/proc/forceClose_game_schedule,
	/client/proc/forceOpen_game_schedule,
	/client/proc/eject_unwhitelisted,
	/client/proc/toggle_pingability
)

/client/proc/add_admin_verbs()
	if (holder)
//		world << "[src] getting [holder]([holder.rights]) admin verbs."
		verbs += admin_verbs_default
	//	if (holder.rights & R_BUILDMODE)		verbs += /client/proc/togglebuildmodeself
		if (holder.rights & R_ADMIN)			verbs += admin_verbs_admin
		if (holder.rights & R_BAN)			verbs += admin_verbs_ban
		if (holder.rights & R_FUN)			verbs += admin_verbs_fun
		if (holder.rights & R_SERVER)		verbs += admin_verbs_server
		if (holder.rights & R_DEBUG)
			verbs += admin_verbs_debug
			if (config.debugparanoid && !(holder.rights & R_ADMIN))
				verbs.Remove(admin_verbs_paranoid_debug)			//Right now it's just callproc but we can easily add others later on.
//		if (holder.rights & R_POSSESS)		verbs += admin_verbs_possess
		if (holder.rights & R_PERMISSIONS)
			verbs += admin_verbs_permissions
			verbs += admin_verbs_manager
		if (holder.rights & R_STEALTH)		verbs += /client/proc/stealth
		if (holder.rights & R_REJUVINATE)	verbs += admin_verbs_rejuv
		if (holder.rights & R_SOUNDS)		verbs += admin_verbs_sounds
		if (holder.rights & R_SPAWN)			verbs += admin_verbs_spawn
		if (holder.rights & R_MOD)			verbs += admin_verbs_mod
		if (holder.rights & R_MENTOR)		verbs += admin_verbs_mentor
		if (holder.rights & R_HOST)
			verbs += admin_verbs_host

/client/proc/remove_admin_verbs()
	verbs.Remove(
		admin_verbs_default,
//		/client/proc/togglebuildmodeself,
		admin_verbs_admin,
		admin_verbs_ban,
		admin_verbs_fun,
		admin_verbs_server,
		admin_verbs_debug,
		admin_verbs_mod,
		admin_verbs_mentor,
//		admin_verbs_possess,
		admin_verbs_permissions,
		/client/proc/stealth,
		admin_verbs_rejuv,
		admin_verbs_sounds,
		admin_verbs_spawn,
		debug_verbs,
		admin_verbs_manager,
		admin_verbs_host
		)

/client/proc/hide_most_verbs()//Allows you to keep some functionality while hiding some verbs
	set name = "Adminverbs - Hide Most"
	set category = "Admin"

	verbs.Remove(/client/proc/hide_most_verbs, admin_verbs_hideable)
	verbs += /client/proc/show_verbs

	src << "<span class='interface'>Most of your adminverbs have been hidden.</span>"

	return

/client/proc/hide_verbs()
	set name = "Adminverbs - Hide All"
	set category = "Admin"

	remove_admin_verbs()
	verbs += /client/proc/show_verbs

	src << "<span class='interface'>Almost all of your adminverbs have been hidden.</span>"

	return

/client/proc/show_verbs()
	set name = "Adminverbs - Show"
	set category = "Admin"

	verbs -= /client/proc/show_verbs
	add_admin_verbs()

	src << "<span class='interface'>All of your adminverbs are now visible.</span>"


/client/proc/admin_ghost()
	set category = "Admin"
	set name = "Aghost"
	if (!holder)	return
	if (isghost(mob))
		//re-enter
		var/mob/observer/ghost/ghost = mob
		if (!is_mentor(usr.client))
			ghost.can_reenter_corpse = TRUE
		if (ghost.can_reenter_corpse)
			ghost.reenter_corpse()
		else
			ghost << "<font color='red'>Error:  Aghost:  Can't reenter corpse, mentors that use adminHUD while aghosting are not permitted to enter their corpse again.</font>"
			return



	else if (istype(mob,/mob/new_player))
		src << "<font color='red'>Error: Aghost: Can't admin-ghost whilst in the lobby. Join or Observe first.</font>"
	else
		//ghostize
		if (ishuman(mob))
			var/mob/living/carbon/human/H = mob
			H.handle_zoom_stuff(TRUE)

		var/mob/body = mob
		var/mob/observer/ghost/ghost = body.ghostize(1)
		ghost.admin_ghosted = TRUE
		if (body)
			body.teleop = ghost
			if (!body.key)
				body.key = "@[key]"	//Haaaaaaaack. But the people have spoken. If it breaks; blame adminbus

/client/proc/invisimin()
	set name = "Invisimin"
	set category = "Admin"
	set desc = "Toggles ghost-like invisibility (Don't abuse this)"
	if (holder && mob)
		if (istype(mob, /mob/observer))
			mob << "<span class = 'warning'>You're already invisible!</span>"
			return
		if (mob.invisibility == INVISIBILITY_OBSERVER)
			mob.invisibility = initial(mob.invisibility)
			mob << "<span class = 'red'><b>Invisimin off. Invisibility reset.</b></span>"
			mob.alpha = max(mob.alpha + 100, 255)
		else
			mob.invisibility = INVISIBILITY_OBSERVER
			mob << "\green <b>Invisimin on. You are now as invisible as a ghost.</b>"
			mob.alpha = max(mob.alpha - 100, 0)

/client/var/visible_in_who = TRUE
/client/proc/who_invisimin()
	set name = "Toggle Staffwho Visibility"
	set category = "Admin"
	set desc = "Toggle your visibility in Staffwho."
	if (holder && mob)
		visible_in_who = !visible_in_who
		if (visible_in_who)
			mob << "<span class = 'notice'>You are now <b>visible</b> in Staffwho.</span>"
		else
			mob << "<span class = 'notice'>You are <b>no longer visible</b> in Staffwho.</span>"

/client/proc/player_panel()
	set name = "Player Panel"
	set category = "Admin"
	if (holder)
		holder.player_panel_old()

	return

/client/proc/player_panel_new()
	set name = "Player Panel New"
	set category = "Admin"
	if (holder)
		holder.player_panel_new()

	return

/client/proc/game_panel()
	set name = "Game Panel"
	set category = "Admin"
	if (holder)
		holder.game_panel()

	return

/client/proc/secrets()
	set name = "Secrets"
	set category = "Admin"
	if (holder)
		holder.Secrets()

	return

/client/proc/colorooc()
	set category = "Fun"
	set name = "OOC Text Color"
	if (!holder)	return
	var/response = WWinput(src, "Please choose a distinct color that is easy to read and doesn't mix with all the other chat and radio frequency colors.", "Change own OOC color", "Pick new color", list("Pick new color", "Reset to default", "Cancel"))
	if (response == "Pick new color")
		prefs.ooccolor = WWinput(src, "Please select your OOC colour.", "OOC colour", null, "color")
	else if (response == "Reset to default")
		prefs.ooccolor = initial(prefs.ooccolor)
	prefs.save_preferences()


	return

/client/proc/stealth()
	set category = "Admin"
	set name = "Stealth Mode"
	if (holder)
		if (holder.fakekey)
			holder.fakekey = null
		else
			var/new_key = ckeyEx(input("Enter your desired display name.", "Fake Key", key) as text|null)
			if (!new_key)	return
			if (length(new_key) >= 26)
				new_key = copytext(new_key, 1, 26)
			holder.fakekey = new_key
		log_admin("[key_name(usr)] has turned stealth mode [holder.fakekey ? "ON" : "OFF"]")
		message_admins("[key_name_admin(usr)] has turned stealth mode [holder.fakekey ? "ON" : "OFF"]", 1)


/client/proc/drop_bomb() // Some admin dickery that can probably be done better -- TLE
	set category = "Special"
	set name = "Drop Bomb"
	set desc = "Cause an explosion of varying strength at your location."

	if (!mob || !mob.loc)
		src << "<span class = 'warning'>You can't drop a bomb here.</span>"
		return

	if (!processes.explosion || !processes.explosion.fires_at_gamestates.Find(ticker.current_state))
		src << "<span class = 'warning'>You can't drop a bomb right now.</span>"
		return

	var/turf/epicenter = mob.loc
	var/list/choices = list("Small Bomb", "Medium Bomb", "Big Bomb", "Custom Bomb")
	var/choice = WWinput(src, "What size explosion would you like to produce?", "Drop Bomb", choices[1], choices)
	switch(choice)
		if (null)
			return FALSE
		if ("Small Bomb")
			explosion(epicenter, 1, 2, 3, 3)
		if ("Medium Bomb")
			explosion(epicenter, 2, 3, 4, 4)
		if ("Big Bomb")
			explosion(epicenter, 3, 5, 7, 5)
		if ("Custom Bomb")
			var/devastation_range = WWinput(src, "Devastation range (in tiles):", "Drop Bomb", 1, "num")
			var/heavy_impact_range = WWinput(src, "Heavy impact range (in tiles):", "Drop Bomb", 1, "num")
			var/light_impact_range = WWinput(src, "Light impact range (in tiles):", "Drop Bomb", 1, "num")
			var/flash_range = WWinput(src, "Flash range (in tiles):", "Drop Bomb", 1, "num")
			if (max(devastation_range, heavy_impact_range, light_impact_range, flash_range) >= 10)
				if (!check_rights(R_PERMISSIONS, 0))
					src << "<span class = 'danger'>You need Manager+ permissions to drop a custom bomb this big.</span>"
					return
			explosion(epicenter, devastation_range, heavy_impact_range, light_impact_range, flash_range)
	message_admins("[key] creating an admin explosion at [epicenter.loc].")

/client/proc/make_sound(var/obj/O in range(world.view)) // -- TLE
	set category = "Special"
	set name = "Make Sound"
	set desc = "Display a message to everyone who can hear the target"
	if (O)
		var/message = sanitize(input("What do you want the message to be?", "Make Sound") as text|null)
		if (!message)
			return
		for (var/mob/V in hearers(O))
			V.show_message(message, 2)
		log_admin("[key_name(usr)] made [O] at [O.x], [O.y], [O.z]. make a sound")
		message_admins("<span class = 'notice'>[key_name_admin(usr)] made [O] at [O.x], [O.y], [O.z]. make a sound.</span>", TRUE)


/client/proc/object_talk(var/msg as text) // -- TLE
	set category = "Special"
	set name = "oSay"
	set desc = "Display a message to everyone who can hear the target"
	if (mob.control_object)
		if (!msg)
			return
		for (var/mob/V in hearers(mob.control_object))
			V.show_message("<b>[mob.control_object.name]</b> says: \"" + msg + "\"", 2)

/client/proc/readmin_self()
	set name = "Re-Admin self"
	set category = "Admin"

	if (deadmin_holder)
		deadmin_holder.reassociate()
		log_admin("[src] re-admined themself.")
		message_admins("[src] re-admined themself.", TRUE)
		verbs -= /client/proc/readmin_self

/client/proc/deadmin_self()
	set name = "De-admin self"
	set category = "Admin"

	if (holder)
		if (WWinput(src, "Confirm self-deadmin for the round? You can re-admin yourself at any time.", "Deadmin Self", "Yes", list("Yes","No")) == "Yes")
			log_admin("[src] deadmined themself.")
			message_admins("[src] deadmined themself.", TRUE)
			deadmin()
			verbs |= /client/proc/readmin_self

/client/proc/toggle_log_hrefs()
	set name = "Toggle href logging"
	set category = "Server"
	if (!holder)	return
	if (config)
		if (config.log_hrefs)
			config.log_hrefs = FALSE
			src << "<b>Stopped logging hrefs</b>"
		else
			config.log_hrefs = TRUE
			src << "<b>Started logging hrefs</b>"

/client/proc/check_ai_laws()
	set name = "Check AI Laws"
	set category = "Admin"
	return FALSE

/client/proc/rename_silicon()
	set name = "Rename Silicon"
	set category = "Admin"
	return FALSE


/client/proc/manage_silicon_laws()
	set name = "Manage Silicon Laws"
	set category = "Admin"
	return FALSE

/client/proc/change_human_appearance_admin()
	set name = "Change Mob Appearance - Admin"
	set desc = "Allows you to change the mob appearance"
	set category = "Admin"

	if (!check_rights(R_FUN)) return

	var/mob/living/carbon/human/H = input("Select mob.", "Change Mob Appearance - Admin") as null|anything in human_mob_list
	if (!H) return

	log_and_message_admins("is altering the appearance of [H].")
	H.change_appearance(APPEARANCE_ALL, usr, usr, check_species_whitelist = FALSE, state = admin_state)


/client/proc/change_human_appearance_self()
	set name = "Change Mob Appearance - Self"
	set desc = "Allows the mob to change its appearance"
	set category = "Admin"

	if (!check_rights(R_FUN)) return

	var/mob/living/carbon/human/H = input("Select mob.", "Change Mob Appearance - Self") as null|anything in human_mob_list
	if (!H) return

	if (!H.client)
		usr << "Only mobs with clients can alter their own appearance."
		return

	switch(WWinput(src, "Do you wish for [H] to be allowed to select whitelisted races?", "Alter Mob Appearance", "No", list("Yes","No","Cancel")))
		if ("Yes")
			log_and_message_admins("has allowed [H] to change \his appearance, including races that requires whitelisting")
			H.change_appearance(APPEARANCE_ALL, H.loc, check_species_whitelist = FALSE)
		if ("No")
			log_and_message_admins("has allowed [H] to change \his appearance, excluding races that requires whitelisting.")
			H.change_appearance(APPEARANCE_ALL, H.loc, check_species_whitelist = TRUE)


//---- bs12 verbs ----

/client/proc/mod_panel()
	set name = "Moderator Panel"
	set category = "Admin"
/*	if (holder)
		holder.mod_panel()*/

	return

/client/proc/editappear()
	set name = "Edit Appearance"
	set category = "Fun"

	if (!check_rights(R_FUN))	return

	var/mob/living/carbon/human/M = WWinput(src, "Select a mob.", "Edit Appearance", WWinput_first_choice(human_mob_list), WWinput_list_or_null(human_mob_list))

	if (!istype(M, /mob/living/carbon/human))
		usr << "<span class = 'red'>You can only do this to humans!</span>"
		return

	switch(WWinput(src, "Are you sure you wish to edit this mob's appearance?", "Edit Appearance", "Yes", list("Yes","No")))
		if ("No")
			return
	var/new_facial = WWinput(src, "Please select a facial hair color.", "Character Generation", null, "color")
	if (new_facial)
		M.r_facial = hex2num(copytext(new_facial, 2, 4))
		M.g_facial = hex2num(copytext(new_facial, 4, 6))
		M.b_facial = hex2num(copytext(new_facial, 6, 8))

	var/new_hair = WWinput(src, "Please select a hair color.", "Character Generation", null, "color")
	if (new_facial)
		M.r_hair = hex2num(copytext(new_hair, 2, 4))
		M.g_hair = hex2num(copytext(new_hair, 4, 6))
		M.b_hair = hex2num(copytext(new_hair, 6, 8))

	var/new_eyes = WWinput(src, "Please select an eye color.", "Character Generation", null, "color")
	if (new_eyes)
		M.r_eyes = hex2num(copytext(new_eyes, 2, 4))
		M.g_eyes = hex2num(copytext(new_eyes, 4, 6))
		M.b_eyes = hex2num(copytext(new_eyes, 6, 8))
		M.update_eyes()

	var/new_tone = WWinput(src, "Please select a skin tone level: 1-220 (1=albino, 35=caucasian, 150=black, 220='very' black)", "Character Generation", null, "text")

	if (new_tone)
		M.s_tone = max(min(round(text2num(new_tone)), 220), 1)
		M.s_tone =  -M.s_tone + 35

	// hair
	var/new_hstyle = WWinput(usr, "Please select a hair style.", "Grooming", WWinput_first_choice(hair_styles_list), WWinput_list_or_null(hair_styles_list))
	if (new_hstyle)
		M.h_style = new_hstyle

	// facial hair
	var/new_fstyle = WWinput(usr, "Please select a facial hair style.", "Grooming", WWinput_first_choice(facial_hair_styles_list), WWinput_list_or_null(facial_hair_styles_list))
	if (new_fstyle)
		M.f_style = new_fstyle

	var/new_gender = WWinput(usr, "Please select a gender.", "Character Generation", "Male", list("Male", "Female"))
	if (new_gender)
		if (new_gender == "Male")
			M.gender = MALE
		else
			M.gender = FEMALE
	M.update_hair()
	M.update_body()
	M.check_dna(M)

/client/proc/playernotes()
	set name = "Show Player Info"
	set category = "Admin"
	if (holder)
		holder.PlayerNotes()

/client/proc/free_slot()
	set name = "Free Job Slot"
	set category = "Admin"
	if (holder)
		var/list/jobs = list()
		for (var/datum/job/J in job_master.occupations)
			if (J.current_positions >= J.total_positions && J.total_positions != -1)
				jobs += J.title
		if (!jobs.len)
			usr << "There are no fully staffed jobs."
			return
		var/job = input("Please select job slot to free", "Free job slot")  as null|anything in jobs
		if (job)
			job_master.FreeRole(job)
			message_admins("A job slot for [job] has been opened by [key_name_admin(usr)]")
			return

/client/proc/man_up(mob/T as mob in mob_list)
	set category = "Fun"
	set name = "Man Up"
	set desc = "Tells mob to man up and deal with it."

	T << "<span class='notice'><b><font size=3>Man up and deal with it.</font></b></span>"
	T << "<span class='notice'>Move on.</span>"

	log_admin("[key_name(usr)] told [key_name(T)] to man up and deal with it.")
	message_admins("<span class = 'notice'>[key_name_admin(usr)] told [key_name(T)] to man up and deal with it.</span>", TRUE)

/client/proc/global_man_up()
	set category = "Fun"
	set name = "Man Up Global"
	set desc = "Tells everyone to man up and deal with it."

	for (var/mob/T as mob in mob_list)
		T << "<br><center><span class='notice'><b><font size=4>Man up.<br> Deal with it.</font></b><br>Move on.</span></center><br>"
		T << 'sound/voice/ManUp1.ogg'

	log_admin("[key_name(usr)] told everyone to man up and deal with it.")
	message_admins("<span class = 'notice'>[key_name_admin(usr)] told everyone to man up and deal with it.</span>", TRUE)