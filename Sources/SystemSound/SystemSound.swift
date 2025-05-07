//
//  SystemSound.swift
//  SystemSound
//
//  Created by otake on 2025/05/07.
//

import Foundation
import AudioToolbox

@MainActor
public struct SystemSound: RawRepresentable, Equatable {
    public var rawValue: String
    public var soundID: SystemSoundID

    nonisolated public init(rawValue: String) {
        self.rawValue = rawValue
        self.soundID = 0
    }
    
    public init(rawValue: String, soundID: SystemSoundID) {
        self.rawValue = rawValue
        self.soundID = soundID
    }
}

public extension SystemSound {
    static var list: [SystemSound] {
        [
            ringback_tone_ansi,
            ringback_tone_cept,
            busy_tone_ansi,
            busy_tone_cept,
            call_waiting_tone_ansi,
            call_waiting_tone_cept,
            end_call_tone_cept,
            ringback_tone_hk,
            ringback_tone_aus,
            ringback_tone_uk,
            new_mail,
            mail_sent,
            sms_received1,
            ReceivedMessage,
            SentMessage,
            alarm,
            low_power,
            sms_received2,
            sms_received3,
            sms_received4,
            sms_received5,
            sms_received6,
            tweet_sent,
            Swish,
            Anticipate,
            Bloom,
            Calypso,
            Choo_Choo,
            Descent,
            Fanfare,
            Ladder,
            Minuet,
            News_Flash,
            Noir,
            Sherwood_Forest,
            Spell,
            Suspense,
            Telegraph,
            Tiptoes,
            Update,
            ussd,
            SIMToolkitCallDropped,
            SIMToolkitGeneralBeep,
            SIMToolkitNegativeACK,
            SIMToolkitPositiveACK,
            SIMToolkitSMS,
            Tink,
            WebcamStart,
            ct_busy,
            ct_congestion,
            ct_path_ack,
            ct_error,
            ct_call_waiting,
            ct_keytone2,
            lock,
            key_press_click,
            Tock,
            connect_power,
            RingerChanged,
            photoShutter,
            shake,
            jbl_begin,
            jbl_confirm,
            jbl_cancel,
            begin_record,
            end_record,
            jbl_ambiguous,
            jbl_no_match,
            camera_shutter_burst,
            airdrop_invite,
            camera_shutter_burst_begin,
            camera_shutter_burst_end,
            focus_change_keyboard,
            focus_change_app_icon,
            focus_change_large,
            focus_change_small,
            navigation_push,
            navigation_pop,
            keyboard_press_normal,
            keyboard_press_delete,
            keyboard_press_clear,
            vc_invitation_accepted,
            vc_ringing,
            vc_ended,
            key_press_delete,
            key_press_modifier,
            wheels_of_time,
            go_to_sleep_alert,
            warsaw,
            nfc_scan_complete,
            access_scan_complete,
            _3rd_party_critical,
            PaymentReceived,
            Doorbell,
            PaymentReceivedFailure,
            dtmf_0,
            dtmf_1,
            dtmf_2,
            dtmf_3,
            dtmf_4,
            dtmf_5,
            dtmf_6,
            dtmf_7,
            dtmf_8,
            dtmf_9,
            dtmf_star,
            dtmf_pound,
            DeviceShutdown,
            long_low_short_high,
            short_double_high,
            short_low_high,
            short_double_low,
            middle_9_short_double_low,
            camera_timer_final_second,
            camera_timer_countdown,
            health_notification,
            MultiwayJoin,
            MultiwayLeave,
            multiway_invitation,
            PushToTalkJoined,
            PushToTalkLeft,
            PushToTalkUnmute,
            PushToTalkMute,
            PushToTalkUnmuteFail,
            SenderConfirmation,
            ReceiverConfirmation,
            ReceiverConnect,
            Typewriters,
            PINEnterDigit_AX,
            PINDelete_AX,
            PINSubmit_AX,
            PINUnexpected,
            PINEnterDigit,
            PINDelete,
            HeadphoneAudioExposureLimitExceeded,
            HealthNotificationUrgent,
            MicMute,
            MicUnmute,
            MicUnmuteFail,
            ScreenSharingStarted,
            MediaPaused,
            MediaHandoff,
            NavigationGenericManeuver,
            ScreenCapture,
            payment_success,
            payment_failure,
            acknowledgment_sent,
            acknowledgment_received,
            nfc_scan_failure,
            Notification_Haptic,
            Ringtone_US_Haptic,
            Ringtone_UK_Haptic,
            Alarm_Haptic,
            SiriStart_Haptic,
            SiriStopSuccess_Haptic,
            SiriStopFailure_Haptic,
            Stockholm_Haptic,
            Beat_Haptic,
            DoNotDisturb_Haptic,
            Timer_Haptic,
            NavigationLeftTurn_Haptic,
            NavigationRightTurn_Haptic,
            Detent_Haptic,
            NavigationGenericManeuver_Haptic,
            CameraCountdownTick_Haptic,
            CameraCountdownImminent_Haptic,
            ET_RemoteTap_Receive_Haptic,
            ET_RemoteTap_Send_Haptic,
            ET_BeginNotification_Haptic,
            StockholmActive_Haptic,
            StockholmActiveSingleCycle_Haptic,
            StockholmFailure_Haptic,
            SedentaryTimer_Haptic,
            HourlyChime_Haptic,
            Preview_AudioAndHaptic,
            Alert_ActivityGoalAttained_Haptic,
            Alert_ActivityGoalBehind_Haptic,
            Alert_ActivityGoalClose_Haptic,
            Alert_BatteryLow_10p_Haptic,
            Alert_BatteryLow_5p_Haptic,
            Alert_Calendar_Haptic,
            Alert_PassbookBalance_Haptic,
            Alert_PassbookGeofence_Haptic,
            Alert_PhotostreamActivity_Haptic,
            Alert_ReminderDue_Haptic,
            Alert_WalkieTalkie_Haptic,
            BatteryMagsafe_Haptic,
            BuddyPairingFailure_Haptic,
            BuddyPairingSuccess_Haptic,
            CameraShutter_Haptic,
            Alert_MapsDirectionsInApp_Haptic,
            MessagesIncoming_Haptic,
            MessagesOutgoing_Haptic,
            OnOffPasscodeFailure_Haptic,
            OrbLayers_Haptic,
            PhoneHangUp_Haptic,
            PhotosZoomDetent_Haptic,
            QB_Dictation_Haptic,
            StopwatchLap_Haptic,
            StopwatchReset_Haptic,
            StopwatchStart_Haptic,
            StopwatchStop_Haptic,
            TimerCancel_Haptic,
            TimerPause_Haptic,
            TimerStart_Haptic,
            TimerWheelHoursDetent_Haptic,
            WalkieTalkieActiveStart_Haptic,
            WorkoutComplete_Haptic,
            WorkoutCountdown_Haptic,
            Alert__3rdParty_Haptic,
            WorkoutSelect_Haptic,
            WorkoutPressStart_Haptic,
            TimerWheelMinutesDetent_Haptic,
            PhoneAnswer_Haptic,
            PhoneHold_Haptic,
            WalkieTalkieActiveEnd_Haptic,
            UISwitch_On_Haptic,
            UISwitch_Off_Haptic,
            UISwipe_Haptic,
            SystemStartup_Haptic,
            BuddyPairingRemoteConnection_Haptic,
            BuddyPairingRemoteTap_Haptic,
            QB_Dictation_Off_Haptic,
            RingtoneDucked_US_Haptic,
            RingtoneDucked_UK_Haptic,
            SalientNotification_Haptic,
            Notification_Salient_Haptic,
            ET_BeginNotification_Salient_Haptic,
            Alert_Calendar_Salient_Haptic,
            Alert_ReminderDue_Salient_Haptic,
            Alert__3rdParty_Salient_Haptic,
            _3rdParty_DirectionUp_Haptic,
            _3rdParty_DirectionDown_Haptic,
            _3rdParty_Success_Haptic,
            _3rdParty_Failure_Haptic,
            _3rdParty_Retry_Haptic,
            _3rdParty_Start_Haptic,
            _3rdParty_Stop_Haptic,
            Alarm_Nightstand_Haptic,
            Alert_BatteryLow_5p_Salient_Haptic,
            NavigationLeftTurn_Salient_Haptic,
            NavigationRightTurn_Salient_Haptic,
            NavigationGenericManeuver_Salient_Haptic,
            SedentaryTimer_Salient_Haptic,
            Alert_ActivityGoalAttained_Salient_Haptic,
            Alert_ActivityGoalBehind_Salient_Haptic,
            Alert_PassbookGeofence_Salient_Haptic,
            WorkoutSaved_Haptic,
            VoiceOver_Click_Haptic,
            SiriAutoSend_Haptic,
            HummingbirdCompletion_Haptic,
            HummingbirdNotification_Haptic,
            RemoteCameraShutterBurstBegin_Haptic,
            RemoteCameraShutterBurstEnd_Haptic,
            WorkoutPaused_Haptic,
            WorkoutResumed_Haptic,
            GoToSleep_Haptic,
            Warsaw_Haptic,
            AutoUnlock_Haptic,
            Alert_ActivityFriendsGoalAttained_Haptic,
            Alert_SpartanConnecting_Haptic,
            Alert_SpartanConnecting_LowLatency_Haptic,
            Alert_SpartanConnected_LowLatency_Haptic,
            Alert_SpartanDisconnected_LowLatency_Haptic,
            AccessScanComplete_Haptic,
            BuddyMigrationStart_Haptic,
            SOSFallDetectionPrompt_Haptic,
            SOSEmergencyContactTextPrompt_Haptic,
            WorkoutStartAutodetect,
            WorkoutCompleteAutodetect,
            WorkoutPausedAutoDetect,
            WorkoutResumedAutoDetect,
            WorkoutPaceAbove,
            WorkoutPaceBelow,
            WalkieTalkieReceiveStart_Haptic,
            WalkieTalkieReceiveEnd_Haptic,
            Alert_Health_Haptic,
            MultiwayInvitation,
            _3rd_Party_Critical_Haptic,
            Alert_1stParty_Haptic,
            Siren_Countdown_Major_Haptic,
            Siren_Countdown_Minor_Haptic,
            Doorbell_Haptic,
            System_Notification_Haptic,
            SOSFallDetectionPromptEscalation_Haptic,
            HealthReadingComplete_Haptic,
            HealthReadingFail_Haptic,
            WorkoutPrecisionStart_Haptic,
            IntervalEnded,
            IntervalUpcoming,
            Elevation,
            Alert_Voicemail_Haptic,
            Alert_Voicemail_Salient_Haptic,
            EarInteraction_Complete,
            HeadGesturesDoubleNod,
            HeadGesturesDoubleShake,
            HeadGesturesPartialNod,
            HeadGesturesPartialShake,
            _jbl_begin,
            _jbl_begin_short,
            jbl_begin_short,
            jbl_begin_short_carplay,
            _jbl_cancel,
            _jbl_confirm,
            LiquidDetected,
            NanoAlert10,
            NanoAlert10_Prominent,
            NanoAlert2,
            NanoAlert2_Prominent,
            NanoAlert3,
            NanoAlert3_Prominent,
            NanoAlert4,
            NanoAlert4_Promiment,
            NanoAlert5,
            NanoAlert5_Prominent,
            NanoAlert6,
            NanoAlert6_Prominent,
            NanoRingtone3,
            NanoRingtone4,
            NanoRingtone6,
            NFCCardComplete,
            NFCCardError,
            NFCCardProvisioned,
            OnOffPasscodeUnlock_Haptic,
            OnOffPasscodeUnlockCampanion_Haptic,
            OrbExit_Haptic,
            RemoteAttentionRequest_Alert,
            Ringtone_2_Ducked_Haptic_sashimi,
            Ringtone_2_Haptic_sashimi,
            _sms_received1,
            vc_ringing_watch,
            WalkAMile_Haptic
        ]
    }
    
    static let ringback_tone_ansi: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ringback_tone_ansi.caf", soundID: 30)
    static let ringback_tone_cept: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ringback_tone_cept.caf", soundID: 31)
    static let busy_tone_ansi: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/busy_tone_ansi.caf", soundID: 32)
    static let busy_tone_cept: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/busy_tone_cept.caf", soundID: 33)
    static let call_waiting_tone_ansi: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/call_waiting_tone_ansi.caf", soundID: 34)
    static let call_waiting_tone_cept: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/call_waiting_tone_cept.caf", soundID: 35)
    static let end_call_tone_cept: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/end_call_tone_cept.caf", soundID: 36)
    static let ringback_tone_hk: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ringback_tone_hk.caf", soundID: 37)
    static let ringback_tone_aus: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ringback_tone_aus.caf", soundID: 38)
    static let ringback_tone_uk: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ringback_tone_uk.caf", soundID: 39)
    static let new_mail: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/new-mail.caf", soundID: 1000)
    static let mail_sent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/mail-sent.caf", soundID: 1001)
    static let sms_received1: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/sms-received1.caf", soundID: 1002)
    static let ReceivedMessage: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ReceivedMessage.caf", soundID: 1003)
    static let SentMessage: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/SentMessage.caf", soundID: 1004)
    static let alarm: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/alarm.caf", soundID: 1005)
    static let low_power: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/low_power.caf", soundID: 1006)
    static let sms_received2: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/sms-received2.caf", soundID: 1008)
    static let sms_received3: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/sms-received3.caf", soundID: 1009)
    static let sms_received4: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/sms-received4.caf", soundID: 1010)
    static let sms_received5: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/sms-received5.caf", soundID: 1013)
    static let sms_received6: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/sms-received6.caf", soundID: 1014)
    static let tweet_sent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/tweet_sent.caf", soundID: 1016)
    static let Swish: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Swish.caf", soundID: 1018)
    static let Anticipate: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Anticipate.caf", soundID: 1020)
    static let Bloom: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Bloom.caf", soundID: 1021)
    static let Calypso: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Calypso.caf", soundID: 1022)
    static let Choo_Choo: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Choo_Choo.caf", soundID: 1023)
    static let Descent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Descent.caf", soundID: 1024)
    static let Fanfare: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Fanfare.caf", soundID: 1025)
    static let Ladder: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Ladder.caf", soundID: 1026)
    static let Minuet: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Minuet.caf", soundID: 1027)
    static let News_Flash: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/News_Flash.caf", soundID: 1028)
    static let Noir: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Noir.caf", soundID: 1029)
    static let Sherwood_Forest: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Sherwood_Forest.caf", soundID: 1030)
    static let Spell: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Spell.caf", soundID: 1031)
    static let Suspense: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Suspense.caf", soundID: 1032)
    static let Telegraph: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Telegraph.caf", soundID: 1033)
    static let Tiptoes: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Tiptoes.caf", soundID: 1034)
    static let Update: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Update.caf", soundID: 1036)
    static let ussd: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ussd.caf", soundID: 1050)
    static let SIMToolkitCallDropped: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/SIMToolkitCallDropped.caf", soundID: 1051)
    static let SIMToolkitGeneralBeep: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/SIMToolkitGeneralBeep.caf", soundID: 1052)
    static let SIMToolkitNegativeACK: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/SIMToolkitNegativeACK.caf", soundID: 1053)
    static let SIMToolkitPositiveACK: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/SIMToolkitPositiveACK.caf", soundID: 1054)
    static let SIMToolkitSMS: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/SIMToolkitSMS.caf", soundID: 1055)
    static let Tink: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Tink.caf", soundID: 1057)
    static let WebcamStart: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/WebcamStart.caf", soundID: 1060)
    static let ct_busy: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ct-busy.caf", soundID: 1070)
    static let ct_congestion: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ct-congestion.caf", soundID: 1071)
    static let ct_path_ack: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ct-path-ack.caf", soundID: 1072)
    static let ct_error: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ct-error.caf", soundID: 1073)
    static let ct_call_waiting: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ct-call-waiting.caf", soundID: 1074)
    static let ct_keytone2: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/ct-keytone2.caf", soundID: 1075)
    static let lock: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/lock.caf", soundID: 1100)
    static let key_press_click: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/key_press_click.caf", soundID: 1104)
    static let Tock: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Tock.caf", soundID: 1105)
    static let connect_power: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/connect_power.caf", soundID: 1106)
    static let RingerChanged: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/RingerChanged.caf", soundID: 1107)
    static let photoShutter: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/photoShutter.caf", soundID: 1108)
    static let shake: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/shake.caf", soundID: 1109)
    static let jbl_begin: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_begin.caf", soundID: 1110)
    static let jbl_confirm: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_confirm.caf", soundID: 1111)
    static let jbl_cancel: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_cancel.caf", soundID: 1112)
    static let begin_record: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/begin_record.caf", soundID: 1113)
    static let end_record: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/end_record.caf", soundID: 1114)
    static let jbl_ambiguous: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_ambiguous.caf", soundID: 1115)
    static let jbl_no_match: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_no_match.caf", soundID: 1116)
    static let camera_shutter_burst: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Modern/camera_shutter_burst.caf", soundID: 1119)
    static let airdrop_invite: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Modern/airdrop_invite.caf", soundID: 1120)
    static let camera_shutter_burst_begin: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Modern/camera_shutter_burst_begin.caf", soundID: 1121)
    static let camera_shutter_burst_end: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Modern/camera_shutter_burst_end.caf", soundID: 1122)
    static let focus_change_keyboard: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/focus_change_keyboard.caf", soundID: 1124)
    static let focus_change_app_icon: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/focus_change_app_icon.caf", soundID: 1125)
    static let focus_change_large: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/focus_change_large.caf", soundID: 1126)
    static let focus_change_small: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/focus_change_small.caf", soundID: 1127)
    static let navigation_push: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/navigation_push.caf", soundID: 1128)
    static let navigation_pop: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/navigation_pop.caf", soundID: 1129)
    static let keyboard_press_normal: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/keyboard_press_normal.caf", soundID: 1130)
    static let keyboard_press_delete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/keyboard_press_delete.caf", soundID: 1131)
    static let keyboard_press_clear: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/keyboard_press_clear.caf", soundID: 1132)
    static let vc_invitation_accepted: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/vc~invitation-accepted.caf", soundID: 1150)
    static let vc_ringing: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/vc~ringing.caf", soundID: 1151)
    static let vc_ended: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/vc~ended.caf", soundID: 1152)
    static let key_press_delete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/key_press_delete.caf", soundID: 1155)
    static let key_press_modifier: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/key_press_modifier.caf", soundID: 1156)
    static let wheels_of_time: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/wheels_of_time.caf", soundID: 1157)
    static let go_to_sleep_alert: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/go_to_sleep_alert.caf", soundID: 1158)
    static let warsaw: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/warsaw.caf", soundID: 1159)
    static let nfc_scan_complete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nfc_scan_complete.caf", soundID: 1160)
    static let access_scan_complete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/access_scan_complete.caf", soundID: 1163)
    static let _3rd_party_critical: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/3rd_party_critical.caf", soundID: 1165)
    static let PaymentReceived: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PaymentReceived.caf", soundID: 1166)
    static let Doorbell: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/Doorbell.caf", soundID: 1167)
    static let PaymentReceivedFailure: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PaymentReceivedFailure.caf", soundID: 1168)
    static let dtmf_0: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-0.caf", soundID: 1200)
    static let dtmf_1: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-1.caf", soundID: 1201)
    static let dtmf_2: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-2.caf", soundID: 1202)
    static let dtmf_3: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-3.caf", soundID: 1203)
    static let dtmf_4: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-4.caf", soundID: 1204)
    static let dtmf_5: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-5.caf", soundID: 1205)
    static let dtmf_6: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-6.caf", soundID: 1206)
    static let dtmf_7: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-7.caf", soundID: 1207)
    static let dtmf_8: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-8.caf", soundID: 1208)
    static let dtmf_9: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-9.caf", soundID: 1209)
    static let dtmf_star: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-star.caf", soundID: 1210)
    static let dtmf_pound: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/dtmf-pound.caf", soundID: 1211)
    static let DeviceShutdown: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/DeviceShutdown.caf", soundID: 1253)
    static let long_low_short_high: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/long_low_short_high.caf", soundID: 1254)
    static let short_double_high: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/short_double_high.caf", soundID: 1255)
    static let short_low_high: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/short_low_high.caf", soundID: 1256)
    static let short_double_low: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/short_double_low.caf", soundID: 1257)
    static let middle_9_short_double_low: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/middle_9_short_double_low.caf", soundID: 1259)
    static let camera_timer_final_second: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/camera_timer_final_second.caf", soundID: 1260)
    static let camera_timer_countdown: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/camera_timer_countdown.caf", soundID: 1261)
    static let health_notification: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/health_notification.caf", soundID: 1262)
    static let MultiwayJoin: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MultiwayJoin.caf", soundID: 1263)
    static let MultiwayLeave: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MultiwayLeave.caf", soundID: 1264)
    static let multiway_invitation: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/multiway_invitation.caf", soundID: 1265)
    static let PushToTalkJoined: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PushToTalkJoined.caf", soundID: 1270)
    static let PushToTalkLeft: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PushToTalkLeft.caf", soundID: 1271)
    static let PushToTalkUnmute: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PushToTalkUnmute.caf", soundID: 1272)
    static let PushToTalkMute: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PushToTalkMute.caf", soundID: 1273)
    static let PushToTalkUnmuteFail: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PushToTalkUnmuteFail.caf", soundID: 1274)
    static let SenderConfirmation: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SenderConfirmation.caf", soundID: 1275)
    static let ReceiverConfirmation: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ReceiverConfirmation.caf", soundID: 1276)
    static let ReceiverConnect: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ReceiverConnect.caf", soundID: 1277)
    static let Typewriters: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/New/Typewriters.caf", soundID: 1335)
    static let PINEnterDigit_AX: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PINEnterDigit_AX.caf", soundID: 1340)
    static let PINDelete_AX: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PINDelete_AX.caf", soundID: 1341)
    static let PINSubmit_AX: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PINSubmit_AX.caf", soundID: 1342)
    static let PINUnexpected: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PINUnexpected.caf", soundID: 1343)
    static let PINEnterDigit: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PINEnterDigit.caf", soundID: 1344)
    static let PINDelete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/PINDelete.caf", soundID: 1345)
    static let HeadphoneAudioExposureLimitExceeded: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HeadphoneAudioExposureLimitExceeded.caf", soundID: 1362)
    static let HealthNotificationUrgent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HealthNotificationUrgent.caf", soundID: 1363)
    static let MicMute: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MicMute.caf", soundID: 1364)
    static let MicUnmute: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MicUnmute.caf", soundID: 1365)
    static let MicUnmuteFail: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MicUnmuteFail.caf", soundID: 1366)
    static let ScreenSharingStarted: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ScreenSharingStarted.caf", soundID: 1367)
    static let MediaPaused: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MediaPaused.caf", soundID: 1368)
    static let MediaHandoff: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MediaHandoff.caf", soundID: 1369)
    static let NavigationGenericManeuver: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/NavigationGenericManeuver.caf", soundID: 1370)
    static let ScreenCapture: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ScreenCapture.caf", soundID: 1393)
    static let payment_success: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/payment_success.caf", soundID: 1394)
    static let payment_failure: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/payment_failure.caf", soundID: 1395)
    static let acknowledgment_sent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/acknowledgment_sent.caf", soundID: 1396)
    static let acknowledgment_received: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/acknowledgment_received.caf", soundID: 1397)
    static let nfc_scan_failure: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nfc_scan_failure.caf", soundID: 1398)
    static let Notification_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Notification_Haptic.caf", soundID: 1400)
    static let Ringtone_US_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Ringtone_US_Haptic.caf", soundID: 1401)
    static let Ringtone_UK_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Ringtone_UK_Haptic.caf", soundID: 1402)
    static let Alarm_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alarm_Haptic.caf", soundID: 1403)
    static let SiriStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SiriStart_Haptic.caf", soundID: 1404)
    static let SiriStopSuccess_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SiriStopSuccess_Haptic.caf", soundID: 1405)
    static let SiriStopFailure_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SiriStopFailure_Haptic.caf", soundID: 1406)
    static let Stockholm_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Stockholm_Haptic.caf", soundID: 1407)
    static let Beat_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Beat_Haptic.caf", soundID: 1408)
    static let DoNotDisturb_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/DoNotDisturb_Haptic.caf", soundID: 1410)
    static let Timer_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Timer_Haptic.caf", soundID: 1413)
    static let NavigationLeftTurn_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NavigationLeftTurn_Haptic.caf", soundID: 1414)
    static let NavigationRightTurn_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NavigationRightTurn_Haptic.caf", soundID: 1415)
    static let Detent_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Detent_Haptic.caf", soundID: 1416)
    static let NavigationGenericManeuver_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NavigationGenericManeuver_Haptic.caf", soundID: 1417)
    static let CameraCountdownTick_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/CameraCountdownTick_Haptic.caf", soundID: 1418)
    static let CameraCountdownImminent_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/CameraCountdownImminent_Haptic.caf", soundID: 1419)
    static let ET_RemoteTap_Receive_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ET_RemoteTap_Receive_Haptic.caf", soundID: 1420)
    static let ET_RemoteTap_Send_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ET_RemoteTap_Send_Haptic.caf", soundID: 1421)
    static let ET_BeginNotification_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ET_BeginNotification_Haptic.caf", soundID: 1422)
    static let StockholmActive_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StockholmActive_Haptic.caf", soundID: 1424)
    static let StockholmActiveSingleCycle_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StockholmActiveSingleCycle_Haptic.caf", soundID: 1425)
    static let StockholmFailure_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StockholmFailure_Haptic.caf", soundID: 1426)
    static let SedentaryTimer_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SedentaryTimer_Haptic.caf", soundID: 1427)
    static let HourlyChime_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HourlyChime_Haptic.caf", soundID: 1428)
    static let Preview_AudioAndHaptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Preview_AudioAndHaptic.caf", soundID: 1429)
    static let Alert_ActivityGoalAttained_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ActivityGoalAttained_Haptic.caf", soundID: 1430)
    static let Alert_ActivityGoalBehind_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ActivityGoalBehind_Haptic.caf", soundID: 1431)
    static let Alert_ActivityGoalClose_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ActivityGoalClose_Haptic.caf", soundID: 1432)
    static let Alert_BatteryLow_10p_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_BatteryLow_10p_Haptic.caf", soundID: 1433)
    static let Alert_BatteryLow_5p_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_BatteryLow_5p_Haptic.caf", soundID: 1434)
    static let Alert_Calendar_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_Calendar_Haptic.caf", soundID: 1435)
    static let Alert_PassbookBalance_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_PassbookBalance_Haptic.caf", soundID: 1440)
    static let Alert_PassbookGeofence_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_PassbookGeofence_Haptic.caf", soundID: 1441)
    static let Alert_PhotostreamActivity_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_PhotostreamActivity_Haptic.caf", soundID: 1442)
    static let Alert_ReminderDue_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ReminderDue_Haptic.caf", soundID: 1443)
    static let Alert_WalkieTalkie_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_WalkieTalkie_Haptic.caf", soundID: 1445)
    static let BatteryMagsafe_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/BatteryMagsafe_Haptic.caf", soundID: 1446)
    static let BuddyPairingFailure_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/BuddyPairingFailure_Haptic.caf", soundID: 1447)
    static let BuddyPairingSuccess_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/BuddyPairingSuccess_Haptic.caf", soundID: 1448)
    static let CameraShutter_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/CameraShutter_Haptic.caf", soundID: 1449)
    static let Alert_MapsDirectionsInApp_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_MapsDirectionsInApp_Haptic.caf", soundID: 1450)
    static let MessagesIncoming_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MessagesIncoming_Haptic.caf", soundID: 1451)
    static let MessagesOutgoing_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MessagesOutgoing_Haptic.caf", soundID: 1452)
    static let OnOffPasscodeFailure_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/OnOffPasscodeFailure_Haptic.caf", soundID: 1453)
    static let OrbLayers_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/OrbLayers_Haptic.caf", soundID: 1458)
    static let PhoneHangUp_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PhoneHangUp_Haptic.caf", soundID: 1459)
    static let PhotosZoomDetent_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PhotosZoomDetent_Haptic.caf", soundID: 1460)
    static let QB_Dictation_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/QB_Dictation_Haptic.caf", soundID: 1461)
    static let StopwatchLap_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StopwatchLap_Haptic.caf", soundID: 1464)
    static let StopwatchReset_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StopwatchReset_Haptic.caf", soundID: 1465)
    static let StopwatchStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StopwatchStart_Haptic.caf", soundID: 1466)
    static let StopwatchStop_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/StopwatchStop_Haptic.caf", soundID: 1467)
    static let TimerCancel_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/TimerCancel_Haptic.caf", soundID: 1468)
    static let TimerPause_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/TimerPause_Haptic.caf", soundID: 1469)
    static let TimerStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/TimerStart_Haptic.caf", soundID: 1470)
    static let TimerWheelHoursDetent_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/TimerWheelHoursDetent_Haptic.caf", soundID: 1471)
    static let WalkieTalkieActiveStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WalkieTalkieActiveStart_Haptic.caf", soundID: 1472)
    static let WorkoutComplete_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutComplete_Haptic.caf", soundID: 1473)
    static let WorkoutCountdown_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutCountdown_Haptic.caf", soundID: 1474)
    static let Alert__3rdParty_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_3rdParty_Haptic.caf", soundID: 1475)
    static let WorkoutSelect_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutSelect_Haptic.caf", soundID: 1476)
    static let WorkoutPressStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutPressStart_Haptic.caf", soundID: 1477)
    static let TimerWheelMinutesDetent_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/TimerWheelMinutesDetent_Haptic.caf", soundID: 1479)
    static let PhoneAnswer_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PhoneAnswer_Haptic.caf", soundID: 1480)
    static let PhoneHold_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/PhoneHold_Haptic.caf", soundID: 1481)
    static let WalkieTalkieActiveEnd_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WalkieTalkieActiveEnd_Haptic.caf", soundID: 1482)
    static let UISwitch_On_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/UISwitch_On_Haptic.caf", soundID: 1484)
    static let UISwitch_Off_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/UISwitch_Off_Haptic.caf", soundID: 1485)
    static let UISwipe_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/UISwipe_Haptic.caf", soundID: 1486)
    static let SystemStartup_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SystemStartup_Haptic.caf", soundID: 1487)
    static let BuddyPairingRemoteConnection_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/BuddyPairingRemoteConnection_Haptic.caf", soundID: 1488)
    static let BuddyPairingRemoteTap_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/BuddyPairingRemoteTap_Haptic.caf", soundID: 1489)
    static let QB_Dictation_Off_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/QB_Dictation_Off_Haptic.caf", soundID: 1490)
    static let RingtoneDucked_US_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/RingtoneDucked_US_Haptic.caf", soundID: 1491)
    static let RingtoneDucked_UK_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/RingtoneDucked_UK_Haptic.caf", soundID: 1492)
    static let SalientNotification_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SalientNotification_Haptic.caf", soundID: 1493)
    static let Notification_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Notification_Salient_Haptic.caf", soundID: 1494)
    static let ET_BeginNotification_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/ET_BeginNotification_Salient_Haptic.caf", soundID: 1495)
    static let Alert_Calendar_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_Calendar_Salient_Haptic.caf", soundID: 1496)
    static let Alert_ReminderDue_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ReminderDue_Salient_Haptic.caf", soundID: 1499)
    static let Alert__3rdParty_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_3rdParty_Salient_Haptic.caf", soundID: 1501)
    static let _3rdParty_DirectionUp_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_DirectionUp_Haptic.caf", soundID: 1502)
    static let _3rdParty_DirectionDown_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_DirectionDown_Haptic.caf", soundID: 1503)
    static let _3rdParty_Success_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_Success_Haptic.caf", soundID: 1504)
    static let _3rdParty_Failure_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_Failure_Haptic.caf", soundID: 1505)
    static let _3rdParty_Retry_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_Retry_Haptic.caf", soundID: 1506)
    static let _3rdParty_Start_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_Start_Haptic.caf", soundID: 1507)
    static let _3rdParty_Stop_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rdParty_Stop_Haptic.caf", soundID: 1508)
    static let Alarm_Nightstand_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alarm_Nightstand_Haptic.caf", soundID: 1509)
    static let Alert_BatteryLow_5p_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_BatteryLow_5p_Salient_Haptic.caf", soundID: 1510)
    static let NavigationLeftTurn_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NavigationLeftTurn_Salient_Haptic.caf", soundID: 1511)
    static let NavigationRightTurn_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NavigationRightTurn_Salient_Haptic.caf", soundID: 1512)
    static let NavigationGenericManeuver_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NavigationGenericManeuver_Salient_Haptic.caf", soundID: 1513)
    static let SedentaryTimer_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SedentaryTimer_Salient_Haptic.caf", soundID: 1514)
    static let Alert_ActivityGoalAttained_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ActivityGoalAttained_Salient_Haptic.caf", soundID: 1515)
    static let Alert_ActivityGoalBehind_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ActivityGoalBehind_Salient_Haptic.caf", soundID: 1516)
    static let Alert_PassbookGeofence_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_PassbookGeofence_Salient_Haptic.caf", soundID: 1517)
    static let WorkoutSaved_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutSaved_Haptic.caf", soundID: 1518)
    static let VoiceOver_Click_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/VoiceOver_Click_Haptic.caf", soundID: 1522)
    static let SiriAutoSend_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SiriAutoSend_Haptic.caf", soundID: 1523)
    static let HummingbirdCompletion_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HummingbirdCompletion_Haptic.caf", soundID: 1525)
    static let HummingbirdNotification_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HummingbirdNotification_Haptic.caf", soundID: 1526)
    static let RemoteCameraShutterBurstBegin_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/RemoteCameraShutterBurstBegin_Haptic.caf", soundID: 1527)
    static let RemoteCameraShutterBurstEnd_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/RemoteCameraShutterBurstEnd_Haptic.caf", soundID: 1528)
    static let WorkoutPaused_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutPaused_Haptic.caf", soundID: 1529)
    static let WorkoutResumed_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutResumed_Haptic.caf", soundID: 1530)
    static let GoToSleep_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/GoToSleep_Haptic.caf", soundID: 1531)
    static let Warsaw_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Warsaw_Haptic.caf", soundID: 1532)
    static let AutoUnlock_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/AutoUnlock_Haptic.caf", soundID: 1533)
    static let Alert_ActivityFriendsGoalAttained_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_ActivityFriendsGoalAttained_Haptic.caf", soundID: 1534)
    static let Alert_SpartanConnecting_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_SpartanConnecting_Haptic.caf", soundID: 1535)
    static let Alert_SpartanConnecting_LowLatency_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_SpartanConnecting_LowLatency_Haptic.caf", soundID: 1536)
    static let Alert_SpartanConnected_LowLatency_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_SpartanConnected_LowLatency_Haptic.caf", soundID: 1537)
    static let Alert_SpartanDisconnected_LowLatency_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_SpartanDisconnected_LowLatency_Haptic.caf", soundID: 1538)
    static let AccessScanComplete_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/AccessScanComplete_Haptic.caf", soundID: 1543)
    static let BuddyMigrationStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/BuddyMigrationStart_Haptic.caf", soundID: 1544)
    static let SOSFallDetectionPrompt_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SOSFallDetectionPrompt_Haptic.caf", soundID: 1545)
    static let SOSEmergencyContactTextPrompt_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SOSEmergencyContactTextPrompt_Haptic.caf", soundID: 1546)
    static let WorkoutStartAutodetect: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutStartAutodetect.caf", soundID: 1547)
    static let WorkoutCompleteAutodetect: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutCompleteAutodetect.caf", soundID: 1548)
    static let WorkoutPausedAutoDetect: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutPausedAutoDetect.caf", soundID: 1549)
    static let WorkoutResumedAutoDetect: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutResumedAutoDetect.caf", soundID: 1550)
    static let WorkoutPaceAbove: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutPaceAbove.caf", soundID: 1551)
    static let WorkoutPaceBelow: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutPaceBelow.caf", soundID: 1552)
    static let WalkieTalkieReceiveStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WalkieTalkieReceiveStart_Haptic.caf", soundID: 1553)
    static let WalkieTalkieReceiveEnd_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WalkieTalkieReceiveEnd_Haptic.caf", soundID: 1554)
    static let Alert_Health_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_Health_Haptic.caf", soundID: 1555)
    static let MultiwayInvitation: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/MultiwayInvitation.caf", soundID: 1558)
    static let _3rd_Party_Critical_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/3rd_Party_Critical_Haptic.caf", soundID: 1559)
    static let Alert_1stParty_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_1stParty_Haptic.caf", soundID: 1560)
    static let Siren_Countdown_Major_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Siren_Countdown_Major_Haptic.caf", soundID: 1563)
    static let Siren_Countdown_Minor_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Siren_Countdown_Minor_Haptic.caf", soundID: 1564)
    static let Doorbell_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Doorbell_Haptic.caf", soundID: 1566)
    static let System_Notification_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/System_Notification_Haptic.caf", soundID: 1567)
    static let SOSFallDetectionPromptEscalation_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/SOSFallDetectionPromptEscalation_Haptic.caf", soundID: 1568)
    static let HealthReadingComplete_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HealthReadingComplete_Haptic.caf", soundID: 1570)
    static let HealthReadingFail_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HealthReadingFail_Haptic.caf", soundID: 1571)
    static let WorkoutPrecisionStart_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WorkoutPrecisionStart_Haptic.caf", soundID: 1581)
    static let IntervalEnded: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/IntervalEnded.caf", soundID: 1582)
    static let IntervalUpcoming: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/IntervalUpcoming.caf", soundID: 1583)
    static let Elevation: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Elevation.caf", soundID: 1584)
    static let Alert_Voicemail_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_Voicemail_Haptic.caf", soundID: 1999)
    static let Alert_Voicemail_Salient_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Alert_Voicemail_Salient_Haptic.caf", soundID: 1999)
    static let EarInteraction_Complete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/EarInteraction_Complete.caf", soundID: 1999)
    static let HeadGesturesDoubleNod: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HeadGesturesDoubleNod.caf", soundID: 1999)
    static let HeadGesturesDoubleShake: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HeadGesturesDoubleShake.caf", soundID: 1999)
    static let HeadGesturesPartialNod: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HeadGesturesPartialNod.caf", soundID: 1999)
    static let HeadGesturesPartialShake: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/HeadGesturesPartialShake.caf", soundID: 1999)
    static let _jbl_begin: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/jbl_begin.caf", soundID: 1999)
    static let _jbl_begin_short: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/jbl_begin_short.caf", soundID: 1999)
    static let jbl_begin_short: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_begin_short.caf", soundID: 1999)
    static let jbl_begin_short_carplay: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/jbl_begin_short_carplay.caf", soundID: 1999)
    static let _jbl_cancel: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/jbl_cancel.caf", soundID: 1999)
    static let _jbl_confirm: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/jbl_confirm.caf", soundID: 1999)
    static let LiquidDetected: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/LiquidDetected.caf", soundID: 1999)
    static let NanoAlert10: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert10.caf", soundID: 1999)
    static let NanoAlert10_Prominent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert10_Prominent.caf", soundID: 1999)
    static let NanoAlert2: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert2.caf", soundID: 1999)
    static let NanoAlert2_Prominent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert2_Prominent.caf", soundID: 1999)
    static let NanoAlert3: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert3.caf", soundID: 1999)
    static let NanoAlert3_Prominent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert3_Prominent.caf", soundID: 1999)
    static let NanoAlert4: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert4.caf", soundID: 1999)
    static let NanoAlert4_Promiment: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert4_Promiment.caf", soundID: 1999)
    static let NanoAlert5: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert5.caf", soundID: 1999)
    static let NanoAlert5_Prominent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert5_Prominent.caf", soundID: 1999)
    static let NanoAlert6: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert6.caf", soundID: 1999)
    static let NanoAlert6_Prominent: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoAlert6_Prominent.caf", soundID: 1999)
    static let NanoRingtone3: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoRingtone3.caf", soundID: 1999)
    static let NanoRingtone4: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoRingtone4.caf", soundID: 1999)
    static let NanoRingtone6: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/NanoRingtone6.caf", soundID: 1999)
    static let NFCCardComplete: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/NFCCardComplete.caf", soundID: 1999)
    static let NFCCardError: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/NFCCardError.caf", soundID: 1999)
    static let NFCCardProvisioned: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/NFCCardProvisioned.caf", soundID: 1999)
    static let OnOffPasscodeUnlock_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/OnOffPasscodeUnlock_Haptic.caf", soundID: 1999)
    static let OnOffPasscodeUnlockCampanion_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/OnOffPasscodeUnlockCampanion_Haptic.caf", soundID: 1999)
    static let OrbExit_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/OrbExit_Haptic.caf", soundID: 1999)
    static let RemoteAttentionRequest_Alert: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/RemoteAttentionRequest_Alert.caf", soundID: 1999)
    static let Ringtone_2_Ducked_Haptic_sashimi: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Ringtone_2_Ducked_Haptic-sashimi.caf", soundID: 1999)
    static let Ringtone_2_Haptic_sashimi: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/Ringtone_2_Haptic-sashimi.caf", soundID: 1999)
    static let _sms_received1: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/sms-received1.caf", soundID: 1999)
    static let vc_ringing_watch: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/vc~ringing_watch.caf", soundID: 1999)
    static let WalkAMile_Haptic: SystemSound = SystemSound(rawValue: "/System/Library/Audio/UISounds/nano/WalkAMile_Haptic.caf", soundID: 1999)    
}
