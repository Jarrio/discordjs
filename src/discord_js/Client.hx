package discord_js;

@:jsRequire("discord.js", "Client") extern class Client extends BaseClient {
	function new(?options:ClientOptions);
	private var actions : Dynamic;
	public var application : ClientApplication;
	private function _eval(script:String):Dynamic;
	private function _validateOptions(?options:ClientOptions):Void;
	public var channels : ChannelManager;
	public final emojis : GuildEmojiManager;
	public var guilds : GuildManager;
	public var readyAt : Null<js.lib.Date>;
	public final readyTimestamp : Null<Float>;
	public var shard : Null<ShardClientUtil>;
	public var token : Null<String>;
	public final uptime : Null<Float>;
	public var user : Null<ClientUser>;
	public var users : UserManager;
	public var voice : Null<ClientVoiceManager>;
	public var ws : WebSocketManager;
	public function fetchApplication():js.lib.Promise<ClientApplication>;
	public function fetchGuildPreview(guild:GuildResolvable):js.lib.Promise<GuildPreview>;
	public function fetchInvite(invite:String):js.lib.Promise<Invite>;
	public function fetchGuildTemplate(template:String):js.lib.Promise<GuildTemplate>;
	public function fetchVoiceRegions():js.lib.Promise<Collection<String, VoiceRegion>>;
	public function fetchWebhook(id:String, ?token:String):js.lib.Promise<Webhook>;
	
	public function login(?token:String):js.lib.Promise<String>;
	public function sweepMessages(?lifetime:Float):Float;
	public function toJSON():Dynamic;
	public function on<K>(event:K, listener:haxe.Constraints.Function):Client;

	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Client { })
	public function once<K>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Client;
	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, args:haxe.extern.Rest<Dynamic>):Bool { })
	public function emit<K>(event:K, args:haxe.extern.Rest<Any>):Bool;
	@:overload(function<S>(event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Client { })
	public function off<K>(event:K, listener:(args:haxe.extern.Rest<Any>) -> Void):Client;
	@:overload(function<S>(?event:{ /** Returns a string representation of a string.Returns a string representation of an object. **/ dynamic function toString():String; /** Returns the primitive value of the specified object.Returns the primitive value of the specified object. **/ dynamic function valueOf():ts.AnyOf2<String, js.lib.Symbol>; }):Client { })
	public function removeAllListeners<K>(?event:K):Client;
	static var prototype : Client;
}