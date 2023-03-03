package discord_js;

import js.lib.Promise;

@:jsRequire("discord.js", "ThreadMemberManager") 
extern class ThreadMemberManager {
	public function add(member_id:String, ?reason:String):Promise<String>;
	public function remove(member_id:String, ?reason:String):Promise<String>;
}