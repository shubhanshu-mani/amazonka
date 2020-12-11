-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsSettings
  ( M2tsSettings (..),

    -- * Smart constructor
    mkM2tsSettings,

    -- * Lenses
    mPmtPid,
    mEtvSignalPid,
    mVideoPid,
    mNielsenId3Behavior,
    mBufferModel,
    mScte35Pid,
    mTransportStreamId,
    mProgramNum,
    mFragmentTime,
    mTimedMetadataBehavior,
    mCCDescriptor,
    mPmtInterval,
    mDvbSdtSettings,
    mEcmPid,
    mNullPacketBitrate,
    mAudioBufferModel,
    mTimedMetadataPid,
    mKlv,
    mAudioFramesPerPes,
    mPcrPeriod,
    mPcrPid,
    mSegmentationMarkers,
    mAribCaptionsPidControl,
    mKlvDataPids,
    mEbpLookaheadMs,
    mDvbSubPids,
    mScte27Pids,
    mPatInterval,
    mAudioStreamType,
    mEsRateInPes,
    mEtvPlatformPid,
    mBitrate,
    mScte35Control,
    mAudioPids,
    mDvbTeletextPid,
    mEbif,
    mArib,
    mAribCaptionsPid,
    mAbsentInputAudioBehavior,
    mSegmentationTime,
    mEbpAudioInterval,
    mDvbNitSettings,
    mPcrControl,
    mEbpPlacement,
    mRateMode,
    mSegmentationStyle,
    mDvbTdtSettings,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.DvbNitSettings
import Network.AWS.MediaLive.Types.DvbSdtSettings
import Network.AWS.MediaLive.Types.DvbTdtSettings
import Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
import Network.AWS.MediaLive.Types.M2tsArib
import Network.AWS.MediaLive.Types.M2tsAribCaptionsPidControl
import Network.AWS.MediaLive.Types.M2tsAudioBufferModel
import Network.AWS.MediaLive.Types.M2tsAudioInterval
import Network.AWS.MediaLive.Types.M2tsAudioStreamType
import Network.AWS.MediaLive.Types.M2tsBufferModel
import Network.AWS.MediaLive.Types.M2tsCCDescriptor
import Network.AWS.MediaLive.Types.M2tsEbifControl
import Network.AWS.MediaLive.Types.M2tsEbpPlacement
import Network.AWS.MediaLive.Types.M2tsEsRateInPes
import Network.AWS.MediaLive.Types.M2tsKlv
import Network.AWS.MediaLive.Types.M2tsNielsenId3Behavior
import Network.AWS.MediaLive.Types.M2tsPcrControl
import Network.AWS.MediaLive.Types.M2tsRateMode
import Network.AWS.MediaLive.Types.M2tsScte35Control
import Network.AWS.MediaLive.Types.M2tsSegmentationMarkers
import Network.AWS.MediaLive.Types.M2tsSegmentationStyle
import Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
import qualified Network.AWS.Prelude as Lude

-- | M2ts Settings
--
-- /See:/ 'mkM2tsSettings' smart constructor.
data M2tsSettings = M2tsSettings'
  { pmtPid :: Lude.Maybe Lude.Text,
    etvSignalPid :: Lude.Maybe Lude.Text,
    videoPid :: Lude.Maybe Lude.Text,
    nielsenId3Behavior :: Lude.Maybe M2tsNielsenId3Behavior,
    bufferModel :: Lude.Maybe M2tsBufferModel,
    scte35Pid :: Lude.Maybe Lude.Text,
    transportStreamId :: Lude.Maybe Lude.Natural,
    programNum :: Lude.Maybe Lude.Natural,
    fragmentTime :: Lude.Maybe Lude.Double,
    timedMetadataBehavior :: Lude.Maybe M2tsTimedMetadataBehavior,
    cCDescriptor :: Lude.Maybe M2tsCCDescriptor,
    pmtInterval :: Lude.Maybe Lude.Natural,
    dvbSdtSettings :: Lude.Maybe DvbSdtSettings,
    ecmPid :: Lude.Maybe Lude.Text,
    nullPacketBitrate :: Lude.Maybe Lude.Double,
    audioBufferModel :: Lude.Maybe M2tsAudioBufferModel,
    timedMetadataPid :: Lude.Maybe Lude.Text,
    klv :: Lude.Maybe M2tsKlv,
    audioFramesPerPes :: Lude.Maybe Lude.Natural,
    pcrPeriod :: Lude.Maybe Lude.Natural,
    pcrPid :: Lude.Maybe Lude.Text,
    segmentationMarkers :: Lude.Maybe M2tsSegmentationMarkers,
    aribCaptionsPidControl :: Lude.Maybe M2tsAribCaptionsPidControl,
    klvDataPids :: Lude.Maybe Lude.Text,
    ebpLookaheadMs :: Lude.Maybe Lude.Natural,
    dvbSubPids :: Lude.Maybe Lude.Text,
    scte27Pids :: Lude.Maybe Lude.Text,
    patInterval :: Lude.Maybe Lude.Natural,
    audioStreamType :: Lude.Maybe M2tsAudioStreamType,
    esRateInPes :: Lude.Maybe M2tsEsRateInPes,
    etvPlatformPid :: Lude.Maybe Lude.Text,
    bitrate :: Lude.Maybe Lude.Natural,
    scte35Control :: Lude.Maybe M2tsScte35Control,
    audioPids :: Lude.Maybe Lude.Text,
    dvbTeletextPid :: Lude.Maybe Lude.Text,
    ebif :: Lude.Maybe M2tsEbifControl,
    arib :: Lude.Maybe M2tsArib,
    aribCaptionsPid :: Lude.Maybe Lude.Text,
    absentInputAudioBehavior ::
      Lude.Maybe M2tsAbsentInputAudioBehavior,
    segmentationTime :: Lude.Maybe Lude.Double,
    ebpAudioInterval :: Lude.Maybe M2tsAudioInterval,
    dvbNitSettings :: Lude.Maybe DvbNitSettings,
    pcrControl :: Lude.Maybe M2tsPcrControl,
    ebpPlacement :: Lude.Maybe M2tsEbpPlacement,
    rateMode :: Lude.Maybe M2tsRateMode,
    segmentationStyle :: Lude.Maybe M2tsSegmentationStyle,
    dvbTdtSettings :: Lude.Maybe DvbTdtSettings
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'M2tsSettings' with the minimum fields required to make a request.
--
-- * 'absentInputAudioBehavior' - When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
-- * 'arib' - When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
-- * 'aribCaptionsPid' - Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'aribCaptionsPidControl' - If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
-- * 'audioBufferModel' - When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
-- * 'audioFramesPerPes' - The number of audio frames to insert for each PES packet.
-- * 'audioPids' - Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'audioStreamType' - When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
-- * 'bitrate' - The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
-- * 'bufferModel' - Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
-- * 'cCDescriptor' - When set to enabled, generates captionServiceDescriptor in PMT.
-- * 'dvbNitSettings' - Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
-- * 'dvbSdtSettings' - Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
-- * 'dvbSubPids' - Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'dvbTdtSettings' - Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
-- * 'dvbTeletextPid' - Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'ebif' - If set to passthrough, passes any EBIF data from the input source to this output.
-- * 'ebpAudioInterval' - When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
-- * 'ebpLookaheadMs' - When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
-- * 'ebpPlacement' - Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
-- * 'ecmPid' - This field is unused and deprecated.
-- * 'esRateInPes' - Include or exclude the ES Rate field in the PES header.
-- * 'etvPlatformPid' - Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'etvSignalPid' - Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'fragmentTime' - The length in seconds of each fragment. Only used with EBP markers.
-- * 'klv' - If set to passthrough, passes any KLV data from the input source to this output.
-- * 'klvDataPids' - Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'nielsenId3Behavior' - If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
-- * 'nullPacketBitrate' - Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
-- * 'patInterval' - The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
-- * 'pcrControl' - When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
-- * 'pcrPeriod' - Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
-- * 'pcrPid' - Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'pmtInterval' - The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
-- * 'pmtPid' - Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'programNum' - The value of the program number field in the Program Map Table.
-- * 'rateMode' - When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
-- * 'scte27Pids' - Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'scte35Control' - Optionally pass SCTE-35 signals from the input source to this output.
-- * 'scte35Pid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'segmentationMarkers' - Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
-- * 'segmentationStyle' - The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.
--
--
-- When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.
--
-- When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
-- * 'segmentationTime' - The length in seconds of each segment. Required unless markers is set to _none_.
-- * 'timedMetadataBehavior' - When set to passthrough, timed metadata will be passed through from input to output.
-- * 'timedMetadataPid' - Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * 'transportStreamId' - The value of the transport stream ID field in the Program Map Table.
-- * 'videoPid' - Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mkM2tsSettings ::
  M2tsSettings
mkM2tsSettings =
  M2tsSettings'
    { pmtPid = Lude.Nothing,
      etvSignalPid = Lude.Nothing,
      videoPid = Lude.Nothing,
      nielsenId3Behavior = Lude.Nothing,
      bufferModel = Lude.Nothing,
      scte35Pid = Lude.Nothing,
      transportStreamId = Lude.Nothing,
      programNum = Lude.Nothing,
      fragmentTime = Lude.Nothing,
      timedMetadataBehavior = Lude.Nothing,
      cCDescriptor = Lude.Nothing,
      pmtInterval = Lude.Nothing,
      dvbSdtSettings = Lude.Nothing,
      ecmPid = Lude.Nothing,
      nullPacketBitrate = Lude.Nothing,
      audioBufferModel = Lude.Nothing,
      timedMetadataPid = Lude.Nothing,
      klv = Lude.Nothing,
      audioFramesPerPes = Lude.Nothing,
      pcrPeriod = Lude.Nothing,
      pcrPid = Lude.Nothing,
      segmentationMarkers = Lude.Nothing,
      aribCaptionsPidControl = Lude.Nothing,
      klvDataPids = Lude.Nothing,
      ebpLookaheadMs = Lude.Nothing,
      dvbSubPids = Lude.Nothing,
      scte27Pids = Lude.Nothing,
      patInterval = Lude.Nothing,
      audioStreamType = Lude.Nothing,
      esRateInPes = Lude.Nothing,
      etvPlatformPid = Lude.Nothing,
      bitrate = Lude.Nothing,
      scte35Control = Lude.Nothing,
      audioPids = Lude.Nothing,
      dvbTeletextPid = Lude.Nothing,
      ebif = Lude.Nothing,
      arib = Lude.Nothing,
      aribCaptionsPid = Lude.Nothing,
      absentInputAudioBehavior = Lude.Nothing,
      segmentationTime = Lude.Nothing,
      ebpAudioInterval = Lude.Nothing,
      dvbNitSettings = Lude.Nothing,
      pcrControl = Lude.Nothing,
      ebpPlacement = Lude.Nothing,
      rateMode = Lude.Nothing,
      segmentationStyle = Lude.Nothing,
      dvbTdtSettings = Lude.Nothing
    }

-- | Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'pmtPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mPmtPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mPmtPid = Lens.lens (pmtPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {pmtPid = a} :: M2tsSettings)
{-# DEPRECATED mPmtPid "Use generic-lens or generic-optics with 'pmtPid' instead." #-}

-- | Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'etvSignalPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEtvSignalPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mEtvSignalPid = Lens.lens (etvSignalPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {etvSignalPid = a} :: M2tsSettings)
{-# DEPRECATED mEtvSignalPid "Use generic-lens or generic-optics with 'etvSignalPid' instead." #-}

-- | Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'videoPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mVideoPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mVideoPid = Lens.lens (videoPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {videoPid = a} :: M2tsSettings)
{-# DEPRECATED mVideoPid "Use generic-lens or generic-optics with 'videoPid' instead." #-}

-- | If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
--
-- /Note:/ Consider using 'nielsenId3Behavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mNielsenId3Behavior :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsNielsenId3Behavior)
mNielsenId3Behavior = Lens.lens (nielsenId3Behavior :: M2tsSettings -> Lude.Maybe M2tsNielsenId3Behavior) (\s a -> s {nielsenId3Behavior = a} :: M2tsSettings)
{-# DEPRECATED mNielsenId3Behavior "Use generic-lens or generic-optics with 'nielsenId3Behavior' instead." #-}

-- | Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
--
-- /Note:/ Consider using 'bufferModel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mBufferModel :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsBufferModel)
mBufferModel = Lens.lens (bufferModel :: M2tsSettings -> Lude.Maybe M2tsBufferModel) (\s a -> s {bufferModel = a} :: M2tsSettings)
{-# DEPRECATED mBufferModel "Use generic-lens or generic-optics with 'bufferModel' instead." #-}

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'scte35Pid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mScte35Pid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mScte35Pid = Lens.lens (scte35Pid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {scte35Pid = a} :: M2tsSettings)
{-# DEPRECATED mScte35Pid "Use generic-lens or generic-optics with 'scte35Pid' instead." #-}

-- | The value of the transport stream ID field in the Program Map Table.
--
-- /Note:/ Consider using 'transportStreamId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mTransportStreamId :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mTransportStreamId = Lens.lens (transportStreamId :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {transportStreamId = a} :: M2tsSettings)
{-# DEPRECATED mTransportStreamId "Use generic-lens or generic-optics with 'transportStreamId' instead." #-}

-- | The value of the program number field in the Program Map Table.
--
-- /Note:/ Consider using 'programNum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mProgramNum :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mProgramNum = Lens.lens (programNum :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {programNum = a} :: M2tsSettings)
{-# DEPRECATED mProgramNum "Use generic-lens or generic-optics with 'programNum' instead." #-}

-- | The length in seconds of each fragment. Only used with EBP markers.
--
-- /Note:/ Consider using 'fragmentTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mFragmentTime :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Double)
mFragmentTime = Lens.lens (fragmentTime :: M2tsSettings -> Lude.Maybe Lude.Double) (\s a -> s {fragmentTime = a} :: M2tsSettings)
{-# DEPRECATED mFragmentTime "Use generic-lens or generic-optics with 'fragmentTime' instead." #-}

-- | When set to passthrough, timed metadata will be passed through from input to output.
--
-- /Note:/ Consider using 'timedMetadataBehavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mTimedMetadataBehavior :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsTimedMetadataBehavior)
mTimedMetadataBehavior = Lens.lens (timedMetadataBehavior :: M2tsSettings -> Lude.Maybe M2tsTimedMetadataBehavior) (\s a -> s {timedMetadataBehavior = a} :: M2tsSettings)
{-# DEPRECATED mTimedMetadataBehavior "Use generic-lens or generic-optics with 'timedMetadataBehavior' instead." #-}

-- | When set to enabled, generates captionServiceDescriptor in PMT.
--
-- /Note:/ Consider using 'cCDescriptor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mCCDescriptor :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsCCDescriptor)
mCCDescriptor = Lens.lens (cCDescriptor :: M2tsSettings -> Lude.Maybe M2tsCCDescriptor) (\s a -> s {cCDescriptor = a} :: M2tsSettings)
{-# DEPRECATED mCCDescriptor "Use generic-lens or generic-optics with 'cCDescriptor' instead." #-}

-- | The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
--
-- /Note:/ Consider using 'pmtInterval' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mPmtInterval :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mPmtInterval = Lens.lens (pmtInterval :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {pmtInterval = a} :: M2tsSettings)
{-# DEPRECATED mPmtInterval "Use generic-lens or generic-optics with 'pmtInterval' instead." #-}

-- | Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
--
-- /Note:/ Consider using 'dvbSdtSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mDvbSdtSettings :: Lens.Lens' M2tsSettings (Lude.Maybe DvbSdtSettings)
mDvbSdtSettings = Lens.lens (dvbSdtSettings :: M2tsSettings -> Lude.Maybe DvbSdtSettings) (\s a -> s {dvbSdtSettings = a} :: M2tsSettings)
{-# DEPRECATED mDvbSdtSettings "Use generic-lens or generic-optics with 'dvbSdtSettings' instead." #-}

-- | This field is unused and deprecated.
--
-- /Note:/ Consider using 'ecmPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEcmPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mEcmPid = Lens.lens (ecmPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {ecmPid = a} :: M2tsSettings)
{-# DEPRECATED mEcmPid "Use generic-lens or generic-optics with 'ecmPid' instead." #-}

-- | Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
--
-- /Note:/ Consider using 'nullPacketBitrate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mNullPacketBitrate :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Double)
mNullPacketBitrate = Lens.lens (nullPacketBitrate :: M2tsSettings -> Lude.Maybe Lude.Double) (\s a -> s {nullPacketBitrate = a} :: M2tsSettings)
{-# DEPRECATED mNullPacketBitrate "Use generic-lens or generic-optics with 'nullPacketBitrate' instead." #-}

-- | When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
--
-- /Note:/ Consider using 'audioBufferModel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAudioBufferModel :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsAudioBufferModel)
mAudioBufferModel = Lens.lens (audioBufferModel :: M2tsSettings -> Lude.Maybe M2tsAudioBufferModel) (\s a -> s {audioBufferModel = a} :: M2tsSettings)
{-# DEPRECATED mAudioBufferModel "Use generic-lens or generic-optics with 'audioBufferModel' instead." #-}

-- | Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'timedMetadataPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mTimedMetadataPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mTimedMetadataPid = Lens.lens (timedMetadataPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {timedMetadataPid = a} :: M2tsSettings)
{-# DEPRECATED mTimedMetadataPid "Use generic-lens or generic-optics with 'timedMetadataPid' instead." #-}

-- | If set to passthrough, passes any KLV data from the input source to this output.
--
-- /Note:/ Consider using 'klv' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mKlv :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsKlv)
mKlv = Lens.lens (klv :: M2tsSettings -> Lude.Maybe M2tsKlv) (\s a -> s {klv = a} :: M2tsSettings)
{-# DEPRECATED mKlv "Use generic-lens or generic-optics with 'klv' instead." #-}

-- | The number of audio frames to insert for each PES packet.
--
-- /Note:/ Consider using 'audioFramesPerPes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAudioFramesPerPes :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mAudioFramesPerPes = Lens.lens (audioFramesPerPes :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {audioFramesPerPes = a} :: M2tsSettings)
{-# DEPRECATED mAudioFramesPerPes "Use generic-lens or generic-optics with 'audioFramesPerPes' instead." #-}

-- | Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
--
-- /Note:/ Consider using 'pcrPeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mPcrPeriod :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mPcrPeriod = Lens.lens (pcrPeriod :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {pcrPeriod = a} :: M2tsSettings)
{-# DEPRECATED mPcrPeriod "Use generic-lens or generic-optics with 'pcrPeriod' instead." #-}

-- | Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'pcrPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mPcrPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mPcrPid = Lens.lens (pcrPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {pcrPid = a} :: M2tsSettings)
{-# DEPRECATED mPcrPid "Use generic-lens or generic-optics with 'pcrPid' instead." #-}

-- | Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
--
-- /Note:/ Consider using 'segmentationMarkers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mSegmentationMarkers :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsSegmentationMarkers)
mSegmentationMarkers = Lens.lens (segmentationMarkers :: M2tsSettings -> Lude.Maybe M2tsSegmentationMarkers) (\s a -> s {segmentationMarkers = a} :: M2tsSettings)
{-# DEPRECATED mSegmentationMarkers "Use generic-lens or generic-optics with 'segmentationMarkers' instead." #-}

-- | If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
--
-- /Note:/ Consider using 'aribCaptionsPidControl' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAribCaptionsPidControl :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsAribCaptionsPidControl)
mAribCaptionsPidControl = Lens.lens (aribCaptionsPidControl :: M2tsSettings -> Lude.Maybe M2tsAribCaptionsPidControl) (\s a -> s {aribCaptionsPidControl = a} :: M2tsSettings)
{-# DEPRECATED mAribCaptionsPidControl "Use generic-lens or generic-optics with 'aribCaptionsPidControl' instead." #-}

-- | Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'klvDataPids' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mKlvDataPids :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mKlvDataPids = Lens.lens (klvDataPids :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {klvDataPids = a} :: M2tsSettings)
{-# DEPRECATED mKlvDataPids "Use generic-lens or generic-optics with 'klvDataPids' instead." #-}

-- | When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
--
-- /Note:/ Consider using 'ebpLookaheadMs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEbpLookaheadMs :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mEbpLookaheadMs = Lens.lens (ebpLookaheadMs :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {ebpLookaheadMs = a} :: M2tsSettings)
{-# DEPRECATED mEbpLookaheadMs "Use generic-lens or generic-optics with 'ebpLookaheadMs' instead." #-}

-- | Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'dvbSubPids' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mDvbSubPids :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mDvbSubPids = Lens.lens (dvbSubPids :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {dvbSubPids = a} :: M2tsSettings)
{-# DEPRECATED mDvbSubPids "Use generic-lens or generic-optics with 'dvbSubPids' instead." #-}

-- | Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'scte27Pids' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mScte27Pids :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mScte27Pids = Lens.lens (scte27Pids :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {scte27Pids = a} :: M2tsSettings)
{-# DEPRECATED mScte27Pids "Use generic-lens or generic-optics with 'scte27Pids' instead." #-}

-- | The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
--
-- /Note:/ Consider using 'patInterval' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mPatInterval :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mPatInterval = Lens.lens (patInterval :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {patInterval = a} :: M2tsSettings)
{-# DEPRECATED mPatInterval "Use generic-lens or generic-optics with 'patInterval' instead." #-}

-- | When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
--
-- /Note:/ Consider using 'audioStreamType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAudioStreamType :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsAudioStreamType)
mAudioStreamType = Lens.lens (audioStreamType :: M2tsSettings -> Lude.Maybe M2tsAudioStreamType) (\s a -> s {audioStreamType = a} :: M2tsSettings)
{-# DEPRECATED mAudioStreamType "Use generic-lens or generic-optics with 'audioStreamType' instead." #-}

-- | Include or exclude the ES Rate field in the PES header.
--
-- /Note:/ Consider using 'esRateInPes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEsRateInPes :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsEsRateInPes)
mEsRateInPes = Lens.lens (esRateInPes :: M2tsSettings -> Lude.Maybe M2tsEsRateInPes) (\s a -> s {esRateInPes = a} :: M2tsSettings)
{-# DEPRECATED mEsRateInPes "Use generic-lens or generic-optics with 'esRateInPes' instead." #-}

-- | Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'etvPlatformPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEtvPlatformPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mEtvPlatformPid = Lens.lens (etvPlatformPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {etvPlatformPid = a} :: M2tsSettings)
{-# DEPRECATED mEtvPlatformPid "Use generic-lens or generic-optics with 'etvPlatformPid' instead." #-}

-- | The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
--
-- /Note:/ Consider using 'bitrate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mBitrate :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Natural)
mBitrate = Lens.lens (bitrate :: M2tsSettings -> Lude.Maybe Lude.Natural) (\s a -> s {bitrate = a} :: M2tsSettings)
{-# DEPRECATED mBitrate "Use generic-lens or generic-optics with 'bitrate' instead." #-}

-- | Optionally pass SCTE-35 signals from the input source to this output.
--
-- /Note:/ Consider using 'scte35Control' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mScte35Control :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsScte35Control)
mScte35Control = Lens.lens (scte35Control :: M2tsSettings -> Lude.Maybe M2tsScte35Control) (\s a -> s {scte35Control = a} :: M2tsSettings)
{-# DEPRECATED mScte35Control "Use generic-lens or generic-optics with 'scte35Control' instead." #-}

-- | Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'audioPids' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAudioPids :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mAudioPids = Lens.lens (audioPids :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {audioPids = a} :: M2tsSettings)
{-# DEPRECATED mAudioPids "Use generic-lens or generic-optics with 'audioPids' instead." #-}

-- | Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'dvbTeletextPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mDvbTeletextPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mDvbTeletextPid = Lens.lens (dvbTeletextPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {dvbTeletextPid = a} :: M2tsSettings)
{-# DEPRECATED mDvbTeletextPid "Use generic-lens or generic-optics with 'dvbTeletextPid' instead." #-}

-- | If set to passthrough, passes any EBIF data from the input source to this output.
--
-- /Note:/ Consider using 'ebif' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEbif :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsEbifControl)
mEbif = Lens.lens (ebif :: M2tsSettings -> Lude.Maybe M2tsEbifControl) (\s a -> s {ebif = a} :: M2tsSettings)
{-# DEPRECATED mEbif "Use generic-lens or generic-optics with 'ebif' instead." #-}

-- | When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
--
-- /Note:/ Consider using 'arib' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mArib :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsArib)
mArib = Lens.lens (arib :: M2tsSettings -> Lude.Maybe M2tsArib) (\s a -> s {arib = a} :: M2tsSettings)
{-# DEPRECATED mArib "Use generic-lens or generic-optics with 'arib' instead." #-}

-- | Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- /Note:/ Consider using 'aribCaptionsPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAribCaptionsPid :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Text)
mAribCaptionsPid = Lens.lens (aribCaptionsPid :: M2tsSettings -> Lude.Maybe Lude.Text) (\s a -> s {aribCaptionsPid = a} :: M2tsSettings)
{-# DEPRECATED mAribCaptionsPid "Use generic-lens or generic-optics with 'aribCaptionsPid' instead." #-}

-- | When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
--
-- /Note:/ Consider using 'absentInputAudioBehavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mAbsentInputAudioBehavior :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsAbsentInputAudioBehavior)
mAbsentInputAudioBehavior = Lens.lens (absentInputAudioBehavior :: M2tsSettings -> Lude.Maybe M2tsAbsentInputAudioBehavior) (\s a -> s {absentInputAudioBehavior = a} :: M2tsSettings)
{-# DEPRECATED mAbsentInputAudioBehavior "Use generic-lens or generic-optics with 'absentInputAudioBehavior' instead." #-}

-- | The length in seconds of each segment. Required unless markers is set to _none_.
--
-- /Note:/ Consider using 'segmentationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mSegmentationTime :: Lens.Lens' M2tsSettings (Lude.Maybe Lude.Double)
mSegmentationTime = Lens.lens (segmentationTime :: M2tsSettings -> Lude.Maybe Lude.Double) (\s a -> s {segmentationTime = a} :: M2tsSettings)
{-# DEPRECATED mSegmentationTime "Use generic-lens or generic-optics with 'segmentationTime' instead." #-}

-- | When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
--
-- /Note:/ Consider using 'ebpAudioInterval' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEbpAudioInterval :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsAudioInterval)
mEbpAudioInterval = Lens.lens (ebpAudioInterval :: M2tsSettings -> Lude.Maybe M2tsAudioInterval) (\s a -> s {ebpAudioInterval = a} :: M2tsSettings)
{-# DEPRECATED mEbpAudioInterval "Use generic-lens or generic-optics with 'ebpAudioInterval' instead." #-}

-- | Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
--
-- /Note:/ Consider using 'dvbNitSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mDvbNitSettings :: Lens.Lens' M2tsSettings (Lude.Maybe DvbNitSettings)
mDvbNitSettings = Lens.lens (dvbNitSettings :: M2tsSettings -> Lude.Maybe DvbNitSettings) (\s a -> s {dvbNitSettings = a} :: M2tsSettings)
{-# DEPRECATED mDvbNitSettings "Use generic-lens or generic-optics with 'dvbNitSettings' instead." #-}

-- | When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
--
-- /Note:/ Consider using 'pcrControl' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mPcrControl :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsPcrControl)
mPcrControl = Lens.lens (pcrControl :: M2tsSettings -> Lude.Maybe M2tsPcrControl) (\s a -> s {pcrControl = a} :: M2tsSettings)
{-# DEPRECATED mPcrControl "Use generic-lens or generic-optics with 'pcrControl' instead." #-}

-- | Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
--
-- /Note:/ Consider using 'ebpPlacement' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mEbpPlacement :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsEbpPlacement)
mEbpPlacement = Lens.lens (ebpPlacement :: M2tsSettings -> Lude.Maybe M2tsEbpPlacement) (\s a -> s {ebpPlacement = a} :: M2tsSettings)
{-# DEPRECATED mEbpPlacement "Use generic-lens or generic-optics with 'ebpPlacement' instead." #-}

-- | When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
--
-- /Note:/ Consider using 'rateMode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mRateMode :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsRateMode)
mRateMode = Lens.lens (rateMode :: M2tsSettings -> Lude.Maybe M2tsRateMode) (\s a -> s {rateMode = a} :: M2tsSettings)
{-# DEPRECATED mRateMode "Use generic-lens or generic-optics with 'rateMode' instead." #-}

-- | The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.
--
--
-- When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.
--
-- When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
--
-- /Note:/ Consider using 'segmentationStyle' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mSegmentationStyle :: Lens.Lens' M2tsSettings (Lude.Maybe M2tsSegmentationStyle)
mSegmentationStyle = Lens.lens (segmentationStyle :: M2tsSettings -> Lude.Maybe M2tsSegmentationStyle) (\s a -> s {segmentationStyle = a} :: M2tsSettings)
{-# DEPRECATED mSegmentationStyle "Use generic-lens or generic-optics with 'segmentationStyle' instead." #-}

-- | Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
--
-- /Note:/ Consider using 'dvbTdtSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mDvbTdtSettings :: Lens.Lens' M2tsSettings (Lude.Maybe DvbTdtSettings)
mDvbTdtSettings = Lens.lens (dvbTdtSettings :: M2tsSettings -> Lude.Maybe DvbTdtSettings) (\s a -> s {dvbTdtSettings = a} :: M2tsSettings)
{-# DEPRECATED mDvbTdtSettings "Use generic-lens or generic-optics with 'dvbTdtSettings' instead." #-}

instance Lude.FromJSON M2tsSettings where
  parseJSON =
    Lude.withObject
      "M2tsSettings"
      ( \x ->
          M2tsSettings'
            Lude.<$> (x Lude..:? "pmtPid")
            Lude.<*> (x Lude..:? "etvSignalPid")
            Lude.<*> (x Lude..:? "videoPid")
            Lude.<*> (x Lude..:? "nielsenId3Behavior")
            Lude.<*> (x Lude..:? "bufferModel")
            Lude.<*> (x Lude..:? "scte35Pid")
            Lude.<*> (x Lude..:? "transportStreamId")
            Lude.<*> (x Lude..:? "programNum")
            Lude.<*> (x Lude..:? "fragmentTime")
            Lude.<*> (x Lude..:? "timedMetadataBehavior")
            Lude.<*> (x Lude..:? "ccDescriptor")
            Lude.<*> (x Lude..:? "pmtInterval")
            Lude.<*> (x Lude..:? "dvbSdtSettings")
            Lude.<*> (x Lude..:? "ecmPid")
            Lude.<*> (x Lude..:? "nullPacketBitrate")
            Lude.<*> (x Lude..:? "audioBufferModel")
            Lude.<*> (x Lude..:? "timedMetadataPid")
            Lude.<*> (x Lude..:? "klv")
            Lude.<*> (x Lude..:? "audioFramesPerPes")
            Lude.<*> (x Lude..:? "pcrPeriod")
            Lude.<*> (x Lude..:? "pcrPid")
            Lude.<*> (x Lude..:? "segmentationMarkers")
            Lude.<*> (x Lude..:? "aribCaptionsPidControl")
            Lude.<*> (x Lude..:? "klvDataPids")
            Lude.<*> (x Lude..:? "ebpLookaheadMs")
            Lude.<*> (x Lude..:? "dvbSubPids")
            Lude.<*> (x Lude..:? "scte27Pids")
            Lude.<*> (x Lude..:? "patInterval")
            Lude.<*> (x Lude..:? "audioStreamType")
            Lude.<*> (x Lude..:? "esRateInPes")
            Lude.<*> (x Lude..:? "etvPlatformPid")
            Lude.<*> (x Lude..:? "bitrate")
            Lude.<*> (x Lude..:? "scte35Control")
            Lude.<*> (x Lude..:? "audioPids")
            Lude.<*> (x Lude..:? "dvbTeletextPid")
            Lude.<*> (x Lude..:? "ebif")
            Lude.<*> (x Lude..:? "arib")
            Lude.<*> (x Lude..:? "aribCaptionsPid")
            Lude.<*> (x Lude..:? "absentInputAudioBehavior")
            Lude.<*> (x Lude..:? "segmentationTime")
            Lude.<*> (x Lude..:? "ebpAudioInterval")
            Lude.<*> (x Lude..:? "dvbNitSettings")
            Lude.<*> (x Lude..:? "pcrControl")
            Lude.<*> (x Lude..:? "ebpPlacement")
            Lude.<*> (x Lude..:? "rateMode")
            Lude.<*> (x Lude..:? "segmentationStyle")
            Lude.<*> (x Lude..:? "dvbTdtSettings")
      )

instance Lude.ToJSON M2tsSettings where
  toJSON M2tsSettings' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("pmtPid" Lude..=) Lude.<$> pmtPid,
            ("etvSignalPid" Lude..=) Lude.<$> etvSignalPid,
            ("videoPid" Lude..=) Lude.<$> videoPid,
            ("nielsenId3Behavior" Lude..=) Lude.<$> nielsenId3Behavior,
            ("bufferModel" Lude..=) Lude.<$> bufferModel,
            ("scte35Pid" Lude..=) Lude.<$> scte35Pid,
            ("transportStreamId" Lude..=) Lude.<$> transportStreamId,
            ("programNum" Lude..=) Lude.<$> programNum,
            ("fragmentTime" Lude..=) Lude.<$> fragmentTime,
            ("timedMetadataBehavior" Lude..=) Lude.<$> timedMetadataBehavior,
            ("ccDescriptor" Lude..=) Lude.<$> cCDescriptor,
            ("pmtInterval" Lude..=) Lude.<$> pmtInterval,
            ("dvbSdtSettings" Lude..=) Lude.<$> dvbSdtSettings,
            ("ecmPid" Lude..=) Lude.<$> ecmPid,
            ("nullPacketBitrate" Lude..=) Lude.<$> nullPacketBitrate,
            ("audioBufferModel" Lude..=) Lude.<$> audioBufferModel,
            ("timedMetadataPid" Lude..=) Lude.<$> timedMetadataPid,
            ("klv" Lude..=) Lude.<$> klv,
            ("audioFramesPerPes" Lude..=) Lude.<$> audioFramesPerPes,
            ("pcrPeriod" Lude..=) Lude.<$> pcrPeriod,
            ("pcrPid" Lude..=) Lude.<$> pcrPid,
            ("segmentationMarkers" Lude..=) Lude.<$> segmentationMarkers,
            ("aribCaptionsPidControl" Lude..=) Lude.<$> aribCaptionsPidControl,
            ("klvDataPids" Lude..=) Lude.<$> klvDataPids,
            ("ebpLookaheadMs" Lude..=) Lude.<$> ebpLookaheadMs,
            ("dvbSubPids" Lude..=) Lude.<$> dvbSubPids,
            ("scte27Pids" Lude..=) Lude.<$> scte27Pids,
            ("patInterval" Lude..=) Lude.<$> patInterval,
            ("audioStreamType" Lude..=) Lude.<$> audioStreamType,
            ("esRateInPes" Lude..=) Lude.<$> esRateInPes,
            ("etvPlatformPid" Lude..=) Lude.<$> etvPlatformPid,
            ("bitrate" Lude..=) Lude.<$> bitrate,
            ("scte35Control" Lude..=) Lude.<$> scte35Control,
            ("audioPids" Lude..=) Lude.<$> audioPids,
            ("dvbTeletextPid" Lude..=) Lude.<$> dvbTeletextPid,
            ("ebif" Lude..=) Lude.<$> ebif,
            ("arib" Lude..=) Lude.<$> arib,
            ("aribCaptionsPid" Lude..=) Lude.<$> aribCaptionsPid,
            ("absentInputAudioBehavior" Lude..=)
              Lude.<$> absentInputAudioBehavior,
            ("segmentationTime" Lude..=) Lude.<$> segmentationTime,
            ("ebpAudioInterval" Lude..=) Lude.<$> ebpAudioInterval,
            ("dvbNitSettings" Lude..=) Lude.<$> dvbNitSettings,
            ("pcrControl" Lude..=) Lude.<$> pcrControl,
            ("ebpPlacement" Lude..=) Lude.<$> ebpPlacement,
            ("rateMode" Lude..=) Lude.<$> rateMode,
            ("segmentationStyle" Lude..=) Lude.<$> segmentationStyle,
            ("dvbTdtSettings" Lude..=) Lude.<$> dvbTdtSettings
          ]
      )
