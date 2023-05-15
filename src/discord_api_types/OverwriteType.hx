package discord_api_types;

enum  abstract OverwriteType(Int) from Int to Int {
	var Role = 0;
	var Member = 1;
}