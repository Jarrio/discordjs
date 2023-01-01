package discord_builder;

import haxe.extern.EitherType;

@:jsRequire('@discordjs/builders', 'SlashCommandSubcommandBuilder')
extern class SlashCommandSubcommandBuilder extends SharedSlashCommandOptions {
	public function new();
	public function setName(command_name:String):SlashCommandSubcommandBuilder;
	public function setDescription(description:String):SlashCommandSubcommandBuilder;
	public function setDefaultMemberPermissions(permissions:EitherType<String, Int>):SlashCommandSubcommandBuilder;
	public var options:Array<Dynamic>;
	public var defaultPermissions:Bool;
	public function toJSON():String;
	public function setRequired(required:Bool):SlashCommandSubcommandBuilder;
}