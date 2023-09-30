import '../base/patchinformation.dart';

class JackboxGamePatch extends PatchInformation{
  final String latestVersion;
  final String? patchPath;
  final List<String> supportedPlatforms;

  JackboxGamePatch({
    required super.id,
    required super.name,
    required super.description,
    required this.latestVersion,
    required this.patchPath,
    required super.patchType,
    required super.authors,
    required super.smallDescription,
    required this.supportedPlatforms,
  });

  factory JackboxGamePatch.fromJson(Map<String, dynamic> json) {
    return JackboxGamePatch(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      latestVersion: json['version'],
      patchPath: json['patch_path'],
      patchType: json['patch_type'] == null
          ? null
          : PatchType.fromJson(json['patch_type']),
      authors: json['authors'],
      smallDescription: json['small_description'],
      supportedPlatforms: json['supported_platforms'] == null 
          ? [ "windows","linux"] : List<String>.from(json['supported_platforms'])
    );
  }
}
