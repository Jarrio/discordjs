package discord_builder;

import discord_api_types.ButtonStyle;
import discord_builder.APIBaseComponent.ComponentType;
import discord_builder.JSONEncodable;

//@:jsRequire('@discordjs/builders', 'ButtonBuilder')
class AttachmentBuilder {
	var attachment:Dynamic;
	var description:String;
	var name:String;
	var spoiler:Bool;
	var disabled:Bool;

	public function new(attachment:Dynamic, ?data:AttachmentData);

	public function setDisabled(disabled:Bool = true):ButtonBuilder {
		this.disabled = disabled;
		return this;
	}

	public function setCustomId(custom_id:String):ButtonBuilder {
		this.custom_id = custom_id;
		return this;
	}
	public function setEmoji(emoji:String):ButtonBuilder {
		this.emoji = emoji;
		return this;
	}
	public function setLabel(label:String):ButtonBuilder {
		this.label = label;
		return this;
	}
	public function setStyle(style:ButtonStyle):ButtonBuilder {
		this.style = style;
		return this;
	}

	public function setUrl(url:String):ButtonBuilder {
		this.url = url;
		return this;
	}
}

typedef AttachmentData = {
	@:optional var name:String;
	@:optional var description:String;
}