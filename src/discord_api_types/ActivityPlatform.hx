package discord_api_types;

@:jsRequire("discord-api-types", "ActivityPlatform") enum  abstract ActivityPlatform(String) from String to String {
	var Desktop;
	var Samsung;
	var Xbox;
}