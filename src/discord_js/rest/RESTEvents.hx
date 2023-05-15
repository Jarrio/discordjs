package discord_js.rest;

/**
	The events that the REST manager emits
**/
enum  abstract RESTEvents(String) from String to String {
	var Debug = "restDebug";
	var RateLimited = "rateLimited";
}