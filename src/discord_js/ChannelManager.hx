package discord_js;

import haxe.extern.EitherType;
import js.lib.Promise;
import discord_js.ThreadManager.BaseFetchOptions;

@:jsRequire("discord.js", "ChannelManager") extern class ChannelManager extends BaseManager<String, Channel, ChannelResolvable> {
	function new(client:Client, iterable:Iterable<Dynamic>);
	@:overload(function(id:String, ?options:BaseFetchOptions):Promise<VoiceChannel>{})
	public function fetch(id:String, ?options:BaseFetchOptions):Promise<EitherType<TextChannel, VoiceChannel>>;
	static var prototype : ChannelManager;
}