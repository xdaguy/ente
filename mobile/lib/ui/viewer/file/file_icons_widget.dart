import 'dart:math' as math;

import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:photos/ente_theme_data.dart';
import "package:photos/generated/l10n.dart";
import "package:photos/models/api/collection/user.dart";
import 'package:photos/models/file/trash_file.dart';
import 'package:photos/theme/colors.dart';
import 'package:photos/ui/sharing/user_avator_widget.dart';

class ThumbnailPlaceHolder extends StatelessWidget {
  const ThumbnailPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.galleryThumbBackgroundColor,
    );
  }
}

class UnSyncedIcon extends StatelessWidget {
  const UnSyncedIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomLeftOverlayIcon(
      Icons.cloud_off_outlined,
      baseSize: 18,
    );
  }
}

class DeviceIcon extends StatelessWidget {
  const DeviceIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomLeftOverlayIcon(
      Icons.mobile_friendly_rounded,
      baseSize: 18,
      color: Color.fromRGBO(1, 222, 77, 0.8),
    );
  }
}

class CloudOnlyIcon extends StatelessWidget {
  const CloudOnlyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomLeftOverlayIcon(
      Icons.cloud_done_outlined,
      baseSize: 18,
      color: Color.fromRGBO(1, 222, 77, 0.8),
    );
  }
}

class FavoriteOverlayIcon extends StatelessWidget {
  const FavoriteOverlayIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomLeftOverlayIcon(
      Icons.favorite_rounded,
      baseSize: 22,
    );
  }
}

class ArchiveOverlayIcon extends StatelessWidget {
  const ArchiveOverlayIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomLeftOverlayIcon(
      Icons.archive_outlined,
      color: fixedStrokeMutedWhite,
    );
  }
}

class PinOverlayIcon extends StatelessWidget {
  const PinOverlayIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomRightOverlayIcon(
      CupertinoIcons.pin,
      color: fixedStrokeMutedWhite,
      rotationAngle: 45 * math.pi / 180,
    );
  }
}

class LivePhotoOverlayIcon extends StatelessWidget {
  const LivePhotoOverlayIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _BottomRightOverlayIcon(
      Icons.album_outlined,
      baseSize: 18,
    );
  }
}

class VideoOverlayIcon extends StatelessWidget {
  const VideoOverlayIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.play_circle_outline,
      size: 24,
      color: Colors.white70,
    );
  }
}

class VideoOverlayDuration extends StatelessWidget {
  final int duration;
  const VideoOverlayDuration({Key? key, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String formattedDuration =
        Duration(seconds: duration).toString().split('.').first;
    final List<String> separated = formattedDuration.split(':');
    final String hour =
        (separated[0] == '0') ? '' : int.parse(separated[0]).toString() + ':';
    final String minute = int.parse(separated[1]).toString() + ':';
    final String second = int.parse(separated[2]).toString();
    final String strippedDuration = hour + minute + second;
    return _BottomRightOverlayText(
      Text(
        strippedDuration,
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: Colors.white),
      ),
    );
  }
}

class OwnerAvatarOverlayIcon extends StatelessWidget {
  final User user;
  const OwnerAvatarOverlayIcon(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 4, top: 4),
        child: UserAvatarWidget(
          user,
          type: AvatarType.tiny,
          thumbnailView: true,
        ),
      ),
    );
  }
}

class TrashedFileOverlayText extends StatelessWidget {
  final TrashFile file;

  const TrashedFileOverlayText(this.file, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int daysLeft =
        ((file.deleteBy - DateTime.now().microsecondsSinceEpoch) /
                Duration.microsecondsPerDay)
            .ceil();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black.withOpacity(0.33), Colors.transparent],
        ),
      ),
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        S.of(context).trashDaysLeft(daysLeft),
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: Colors.white), //same for both themes
      ),
    );
  }
}

// Base variations

/// Icon overlay in the bottom left.
///
/// This usually indicates ente specific state of a file, e.g. if it is
/// favorited/archived.
class _BottomLeftOverlayIcon extends StatelessWidget {
  final IconData icon;

  /// Overriddable color. Default is a fixed white.
  final Color color;

  /// Overriddable default size. This is just the initial hint, the actual size
  /// is dynamic based on the widget's width (so that we show smaller icons in
  /// smaller thumbnails).
  final double baseSize;

  const _BottomLeftOverlayIcon(
    this.icon, {
    Key? key,
    this.baseSize = 24,
    this.color = Colors.white, // fixed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double inset = 4;
        double size = baseSize;

        if (constraints.hasBoundedWidth) {
          final w = constraints.maxWidth;
          if (w > 125) {
            size = 24;
          } else if (w < 75) {
            inset = 3;
            size = 16;
          }
        }

        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(0, 0, 0, 0.14),
                Color.fromRGBO(0, 0, 0, 0.05),
                Color.fromRGBO(0, 0, 0, 0.0),
              ],
              stops: [0, 0.6, 1],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: inset, bottom: inset),
              child: Icon(
                icon,
                size: size,
                color: color,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Icon overlay in the bottom right.
///
/// This usually indicates information about the file itself, e.g. whether it is
/// a live photo, or the duration of the video.
class _BottomRightOverlayIcon extends StatelessWidget {
  final IconData icon;

  /// Overriddable color. Default is a fixed white.
  final Color color;

  /// Overriddable default size. This is just the initial hint, the actual size
  /// is dynamic based on the widget's width (so that we show smaller icons in
  /// smaller thumbnails).
  final double baseSize;

  // Overridable rotation angle. Default is null, which means no rotation.
  final double? rotationAngle;

  const _BottomRightOverlayIcon(
    this.icon, {
    Key? key,
    this.rotationAngle,
    this.baseSize = 24,
    this.color = Colors.white, // fixed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double inset = 4;
        double size = baseSize;

        if (constraints.hasBoundedWidth) {
          final w = constraints.maxWidth;
          if (w > 120) {
            size = 24;
          } else if (w < 75) {
            inset = 3;
            size = 16;
          }
        }

        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(0, 0, 0, 0.14),
                Color.fromRGBO(0, 0, 0, 0.05),
                Color.fromRGBO(0, 0, 0, 0.0),
              ],
              stops: [0, 0.6, 1],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: inset, right: inset),
              child: rotationAngle == null
                  ? Icon(
                      icon,
                      size: size,
                      color: color,
                    )
                  : Transform.rotate(
                      angle: rotationAngle!, // rotate by 45 degrees
                      child: Icon(
                        icon,
                        size: size,
                        color: color,
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}

class _BottomRightOverlayText extends StatelessWidget {
  final Text text;

  const _BottomRightOverlayText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double inset = 4;

        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.center,
              colors: [
                Color.fromRGBO(0, 0, 0, 0.14),
                Color.fromRGBO(0, 0, 0, 0.05),
                Color.fromRGBO(0, 0, 0, 0.0),
              ],
              stops: [0, 0.6, 1],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: inset, right: inset),
              child: text,
            ),
          ),
        );
      },
    );
  }
}
