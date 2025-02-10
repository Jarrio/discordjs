package discord_js;

import discord_js.MessageAttachment;
import ts.AnyOf2;
import haxe.extern.EitherType;

typedef MessageOptions = {
	@:optional var tts:Bool;
	@:optional var ephemeral:Bool;
	@:optional var fetchReply:Bool;
	@:optional var nonce:String;
	@:optional var content:String;
	@:optional var username:String;
	@:optional var avatarURL:String;
	@:optional var embeds:Array<MessageEmbed>;
	@:optional var allowedMentions:MessageMentionOptions;
	@:optional var files:Array<AnyOf2<FileOptions, MessageAttachment>>;
	// Not added to the externs
	// @:optional var components:Array<MessageActionR>;
	@:optional var attachments:Array<MessageAttachment>;
	@:optional var reply:ReplyOptions;
}

typedef ReplyOptions = {
	var messageReference:Message;
	@:optional var failIfNotExists:Bool;
}

