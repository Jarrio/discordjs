package discord_builder;

import haxe.extern.EitherType;

@:jsRequire('@discordjs/builders', 'SlashCommandBuilder')
extern class SlashCommandBuilder extends SharedSlashCommandOptions {
	public function new();
	public function setName(command_name:String):SlashCommandBuilder;
	public function setDescription(description:String):SlashCommandBuilder;
	public function setDefaultMemberPermissions(permissions:EitherType<String, Int>):SlashCommandBuilder;
	public var options:Array<Dynamic>;
	public var defaultPermissions:Bool;
	public function toJSON():String;
	public function setRequired(required:Bool):SlashCommandBuilder;
}