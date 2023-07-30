package discord_builder;

import discord_builder.BaseCommandInteraction.InteractionReplyOptions;
import discord_builder.BaseCommandInteraction.InteractionDeferReplyOptions;
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

@:native
extern class ModalSubmitInteraction extends BaseCommandInteraction {

	function deferReply(options:InteractionDeferReplyOptions):Promise<Message>;
	function deleteReply():Promise<Void>;
	@:overload(function(options:String):Promise<Message> {})
	@:overload(function(options:InteractionReplyOptions):Promise<Message> {})
	function editReply():Promise<Message>;
	function fetchReply():Promise<Message>;
	function followUp(options:String):Promise<Message>;

	@:overload(function(options:String):Promise<Message> {})
	@:overload(function(options:InteractionReplyOptions):Promise<Message> {})
	function reply():Promise<Message>;
	function respond(options:Array<ApplicationCommandOptionChoice>):Promise<Void>;
	function showModal(modal:ModalBuilder):Promise<Void>;
}