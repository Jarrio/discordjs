package discord_js;

import discord_js.InviteOptions;
import js.lib.Promise;

@:jsRequire("discord.js", "GuildScheduledEvent") 
extern class GuildScheduledEvent extends Base {
	public var id:String;
	public var channel:VoiceChannel;
	public var channelId:String;
	public var name:String;
	public var description:String;
	public var scheduledStartAt:Date;
	public var scheduledStartTimestamp:Float;
	public var scheduledEndAt:Date;
	public var scheduledEndTimestamp:Float;
	public var userCount:Int;
	public var status:GuildScheduledEventStatus;
	public var entityMetadata:{
		var location:String;
	};
	
	public function isActive():GuildScheduledEventStatus;
	public function isCanceled():GuildScheduledEventStatus;
	public function isCompleted():GuildScheduledEventStatus;
	public function isScheduled():GuildScheduledEventStatus;
	public function createInviteURL(?options:GuildScheduledEventInviteURLCreateOptions):Promise<String>;
	public function setStatus(status:GuildScheduledEventStatus, ?reason:String):Promise<GuildScheduledEvent>;
	public function setDescription(description:String, ?reason:String):Promise<GuildScheduledEvent>;
	public function setLocation(location:String, ?reason:String):Promise<GuildScheduledEvent>;
	public function setName(name:String, ?reason:String):Promise<GuildScheduledEvent>;
}

enum abstract GuildScheduledEventStatus(Int) to Int {
	var Scheduled = 1;
	var Active = 2;
	var Completed = 3;
	var Canceled = 4;
}

typedef GuildScheduledEventInviteURLCreateOptions = {
	> InviteOptions,
	@:optional var channel:String;
}