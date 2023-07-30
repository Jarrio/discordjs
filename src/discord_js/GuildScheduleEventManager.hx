package discord_js;

import js.lib.Promise;
import haxe.extern.EitherType;

@:jsRequire("discord.js", "GuildScheduleEventManager") 
extern class GuildScheduleEventManager {
	public var client:Client;
	public var guild:Guild;
	public var cache:Collection<String, GuildScheduledEvent>;
	public function create(options:GuildScheduledEventCreateOptions):Promise<GuildScheduledEvent>;
	public function edit(event_id:String, options:GuildScheduledEventCreateOptions):Promise<GuildScheduledEvent>;
	public function delete(event_id:String):Promise<Void>;
	public function fetch(?event_id:String):Promise<EitherType<GuildScheduledEvent, Collection<String, GuildScheduledEvent>>>;
}

typedef GuildScheduledEventCreateOptions = {
	var name:String;
	var scheduledStartTime:Float;
	var privacyLevel:PrivacyLevel;
	var entityType:GuildScheduledEventEntityType;
	@:optional var channel:String;
	@:optional var entityMetaata:{location:String};
	@:optional var reason:String;
	@:optional var scheduledEndTime:Float;
	@:optional var description:String;
}

enum abstract GuildScheduledEventEntityType(Int) {
	var StageInstance = 1;
	var Voice = 2;
	var External = 3;
}

enum abstract PrivacyLevel(Int) {
	var GuildOnly = 2;
}