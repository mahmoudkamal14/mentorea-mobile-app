import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class SessionService {
  static final JitsiMeet _jitsiMeet = JitsiMeet();

  static void toggleScreenSharing(bool enabled) {
    _jitsiMeet.toggleScreenShare(enabled);
  }

  static Future<void> join({
    required String roomName,
    required String userName,
    required String email,
  }) async {
    final options = JitsiMeetConferenceOptions(
      serverURL: "https://meet.ffmuc.net",
      room: roomName,
      configOverrides: {
        "startWithAudioMuted": false,
        "startWithVideoMuted": false,
        "subject": "Mentorship Session",
      },
      featureFlags: {
        FeatureFlags.addPeopleEnabled: true,
        FeatureFlags.welcomePageEnabled: true,
        FeatureFlags.preJoinPageEnabled: true,
        FeatureFlags.unsafeRoomWarningEnabled: true,
        FeatureFlags.resolution: FeatureFlagVideoResolutions.resolution720p,
        FeatureFlags.audioFocusDisabled: true,
        FeatureFlags.audioMuteButtonEnabled: true,
        FeatureFlags.audioOnlyButtonEnabled: true,
        FeatureFlags.calenderEnabled: false,
        FeatureFlags.callIntegrationEnabled: true,
        FeatureFlags.carModeEnabled: true,
        FeatureFlags.closeCaptionsEnabled: true,
        FeatureFlags.conferenceTimerEnabled: true,
        FeatureFlags.chatEnabled: false,
        FeatureFlags.filmstripEnabled: true,
        FeatureFlags.fullScreenEnabled: true,
        FeatureFlags.helpButtonEnabled: true,
        FeatureFlags.inviteEnabled: false,
        FeatureFlags.androidScreenSharingEnabled: true,
        FeatureFlags.speakerStatsEnabled: true,
        FeatureFlags.kickOutEnabled: true,
        FeatureFlags.liveStreamingEnabled: true,
        FeatureFlags.lobbyModeEnabled: true,
        FeatureFlags.meetingNameEnabled: false,
        FeatureFlags.meetingPasswordEnabled: false,
        FeatureFlags.notificationEnabled: true,
        FeatureFlags.overflowMenuEnabled: true,
        FeatureFlags.pipEnabled: true,
        FeatureFlags.pipWhileScreenSharingEnabled: true,
        FeatureFlags.preJoinPageHideDisplayName: true,
        FeatureFlags.raiseHandEnabled: true,
        FeatureFlags.reactionsEnabled: true,
        FeatureFlags.recordingEnabled: true,
        FeatureFlags.replaceParticipant: true,
        FeatureFlags.securityOptionEnabled: true,
        FeatureFlags.serverUrlChangeEnabled: true,
        FeatureFlags.settingsEnabled: true,
        FeatureFlags.tileViewEnabled: true,
        FeatureFlags.videoMuteEnabled: true,
        FeatureFlags.videoShareEnabled: true,
        FeatureFlags.toolboxEnabled: true,
        FeatureFlags.iosRecordingEnabled: true,
        FeatureFlags.iosScreenSharingEnabled: true,
        FeatureFlags.toolboxAlwaysVisible: true,
      },
      userInfo: JitsiMeetUserInfo(
        displayName: userName,
        email: email,
      ),
    );

    final listener = JitsiMeetEventListener(
      conferenceJoined: (url) {
        print("✅ Conference joined: $url");
      },
      conferenceWillJoin: (url) {
        print("📞 Will join: $url");
      },
      conferenceTerminated: (url, error) {
        print("❌ Conference ended: $url, error: $error");
      },
    );

    try {
      await _jitsiMeet.join(options, listener);
    } catch (e) {
      print("🚨 Failed to join session: $e");
    }
  }

  static void leave() {
    _jitsiMeet.hangUp();
  }
}
