package discord_builder;

import discord_builder.APIActionRowComponent;
import discord_builder.ActionRowBuilder;
import discord_js.ApplicationCommand.ApplicationCommandOptionChoice;
import discord_js.MessageAttachment;
import discord_js.FileOptions;
import discord_js.MessageMentionOptions;
import discord_api_types.APIEmbed;
import haxe.extern.EitherType;
import discord_js.MessageEmbed;
import discord_js.User;
import discord_js.Message;
import js.lib.Promise;
import discord_api_types.InteractionType;
import discord_api_types.Snowflake;

enum abstract ComponentTypes(Int) {
	var Button = 2;
	var StringSelectMenu = 2;
	var UserSelectMenu = 2;
	var RoleSelectMenu = 2;
	var MentionableSelectMenu = 2;
	var ChannelSelectMenu = 2;
}

@:native
extern class BaseCommandInteraction extends Interaction {
	var ephemeral:Bool;
	var command:Dynamic;
	var commandId:Snowflake;
	var commandName:String;
	public var componentType:ComponentTypes;
	var deferred:Bool;
	var replied:Bool;
	public var responded:Bool;
	var type:InteractionType;
	var options:CommandInteractions;
	var fields:ModalSubmitFields;
	var customId:String;
	var targetMessage:Message;
	function deferReply(options:InteractionDeferReplyOptions):Promise<Message>;
	function deferUpdate(?options:InteractionDeferReplyOptions):Promise<Message>;
	function deleteReply():Promise<Void>;
	@:overload(function(options:String):Promise<Message> {})
	@:overload(function(options:InteractionReplyOptions):Promise<Message> {})
	function editReply():Promise<Message>;
	function fetchReply():Promise<Message>;
	function followUp(options:String):Promise<Message>;

	@:overload(function(options:String):Promise<Message> {})
	@:overload(function(options:InteractionReplyOptions):Promise<Message> {})
	function reply(options:InteractionReplyOptions):Promise<Message>;
	function update(options:InteractionReplyOptions):Promise<Message>;
	function respond(options:Array<ApplicationCommandOptionChoice>):Promise<Void>;
	function showModal(modal:ModalBuilder):Promise<Void>;
}

typedef CommandInteractions = {
	var _hoistedOptions:Array<{name:String, type:String, value:String, focused:Bool}>;
	function getMentionable(id:String):Dynamic;
	function getRole(id:String):Dynamic;
	function getChannel(id:String):Dynamic;
	function getMember(id:String):Dynamic;
	function getBoolean(id:String):Bool;
	function getNumber(id:String):Float;
	function getSubcommand():String;
	function getString(id:String):String;
	function getUser(id:String):User;
}

typedef InteractionReplyOptions = {
	@:optional var tts:Bool;
	@:optional var ephemeral:Bool;
	@:optional var fetchReply:Bool;
	@:optional var nonce:String;
	@:optional var content:String;
	@:optional var components:Array<APIActionRowComponent<Dynamic>>;
	@:optional var embeds:EitherType<Array<MessageEmbed>, Array<APIEmbed>>;
	@:optional var allowedMentions:MessageMentionOptions;
	@:optional var files:Array<FileOptions>;
	@:optional var attachments:Array<MessageAttachment>;
}

typedef InteractionDeferReplyOptions = {
	@:optional var ephemeral:Bool;
	@:optional var fetchReply:Bool;
}