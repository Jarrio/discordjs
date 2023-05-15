package discord_api_types;

enum  abstract AuditLogOptionsType(String) from String to String {
	var Role = "0";
	var Member = "1";
}