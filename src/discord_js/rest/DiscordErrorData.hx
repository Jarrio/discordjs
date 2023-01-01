package discord_js.rest;

typedef DiscordErrorData = {
	var code : Float;
	var message : String;
	@:optional
	var errors : DiscordError;
};