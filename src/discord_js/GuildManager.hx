package discord_js;
import haxe.extern.EitherType;
import discord_js.ThreadManager.BaseFetchOptions;

@:jsRequire("discord.js", "GuildManager") extern class GuildManager extends BaseManager<String, Guild, GuildResolvable> {
	function new(client:Client, ?iterable:Iterable<Dynamic>);
	public function create(name:String, ?options:GuildCreateOptions):js.lib.Promise<Guild>;
	public function fetch(?id:EitherType<String, FetchGuildOptions>):js.lib.Promise<Guild>;
	static var prototype : GuildManager;
}

typedef FetchGuildOptions = {
	> BaseFetchOptions,
	@:optional var guild:String;
	@:optional var withCounts:Bool;
}