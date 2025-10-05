import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Person-specific properties
@freezed
class PersonInfo with _$PersonInfo {
  const factory PersonInfo({
    String? email,
  }) = _PersonInfo;

  factory PersonInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonInfoFromJson(json);
}

/// Bot owner information
@Freezed(toJson: false, fromJson: false)
class BotOwner with _$BotOwner {
  const BotOwner._();

  const factory BotOwner.workspace() = WorkspaceOwner;
  const factory BotOwner.user() = UserOwner;

  factory BotOwner.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    if (type == 'workspace') {
      return const BotOwner.workspace();
    } else {
      return const BotOwner.user();
    }
  }

  Map<String, dynamic> toJson() => when(
      workspace: () => {'type': 'workspace', 'workspace': true},
      user: () => {'type': 'user'},
    );
}

/// Bot-specific properties
@Freezed(toJson: false, fromJson: false)
class BotInfo with _$BotInfo {

  const factory BotInfo({
    required BotOwner owner,
    String? workspaceName,
  }) = _BotInfo;
  const BotInfo._();

  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
      owner: BotOwner.fromJson(json['owner'] as Map<String, dynamic>),
      workspaceName: json['workspace_name'] as String?,
    );

  Map<String, dynamic> toJson() => {
      'owner': owner.toJson(),
      if (workspaceName != null) 'workspace_name': workspaceName,
    };
}

/// User object representing a user in a Notion workspace
@Freezed(toJson: false, fromJson: false)
class User with _$User {
  const User._();

  const factory User.person({
    required String id,
    required PersonInfo person, String? name,
    String? avatarUrl,
  }) = PersonUser;

  const factory User.bot({
    required String id,
    required BotInfo bot, String? name,
    String? avatarUrl,
  }) = BotUser;

  factory User.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final id = json['id'] as String;
    final name = json['name'] as String?;
    final avatarUrl = json['avatar_url'] as String?;

    if (type == 'person') {
      return User.person(
        id: id,
        name: name,
        avatarUrl: avatarUrl,
        person: PersonInfo.fromJson(json['person'] as Map<String, dynamic>),
      );
    } else if (type == 'bot') {
      return User.bot(
        id: id,
        name: name,
        avatarUrl: avatarUrl,
        bot: BotInfo.fromJson(json['bot'] as Map<String, dynamic>),
      );
    } else {
      // If type is not specified, treat as person with no email
      return User.person(
        id: id,
        name: name,
        avatarUrl: avatarUrl,
        person: const PersonInfo(),
      );
    }
  }

  Map<String, dynamic> toJson() => when(
      person: (id, name, avatarUrl, person) => {
        'object': 'user',
        'id': id,
        if (name != null) 'name': name,
        if (avatarUrl != null) 'avatar_url': avatarUrl,
        'type': 'person',
        'person': person.toJson(),
      },
      bot: (id, name, avatarUrl, bot) => {
        'object': 'user',
        'id': id,
        if (name != null) 'name': name,
        if (avatarUrl != null) 'avatar_url': avatarUrl,
        'type': 'bot',
        'bot': bot.toJson(),
      },
    );
}
