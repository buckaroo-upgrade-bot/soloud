' SoLoud wrapper for BlitzMax
' This file is autogenerated; any changes will be overwritten

Global SoloudLib:Int = LoadLibraryA ("soloud_x86.dll")
If not SoloudLib Then Notify "soloud_x86.dll not found"; End

' Enumerations
Const FFTFILTER_OVER:Int = 0
Const SOLOUD_WASAPI:Int = 6
Const SOLOUD_AUTO:Int = 0
Const BIQUADRESONANTFILTER_NONE:Int = 0
Const SOLOUD_CLIP_ROUNDOFF:Int = 1
Const LOFIFILTER_BITDEPTH:Int = 2
Const SOLOUD_SDL2:Int = 2
Const SFXR_HURT:Int = 4
Const FFTFILTER_MULTIPLY:Int = 2
Const SOLOUD_ENABLE_VISUALIZATION:Int = 2
Const BIQUADRESONANTFILTER_HIGHPASS:Int = 2
Const SFXR_LASER:Int = 1
Const SFXR_BLIP:Int = 6
Const SFXR_JUMP:Int = 5
Const LOFIFILTER_WET:Int = 0
Const BIQUADRESONANTFILTER_WET:Int = 0
Const LOFIFILTER_SAMPLERATE:Int = 1
Const SOLOUD_SDL:Int = 1
Const BIQUADRESONANTFILTER_LOWPASS:Int = 1
Const SFXR_COIN:Int = 0
Const FLANGERFILTER_FREQ:Int = 2
Const SOLOUD_PORTAUDIO:Int = 3
Const BIQUADRESONANTFILTER_SAMPLERATE:Int = 1
Const SFXR_EXPLOSION:Int = 2
Const BIQUADRESONANTFILTER_BANDPASS:Int = 3
Const SOLOUD_OPENAL:Int = 8
Const FLANGERFILTER_WET:Int = 0
Const BIQUADRESONANTFILTER_FREQUENCY:Int = 2
Const SFXR_POWERUP:Int = 3
Const FFTFILTER_SUBTRACT:Int = 1
Const SOLOUD_BACKEND_MAX:Int = 9
Const BIQUADRESONANTFILTER_RESONANCE:Int = 3
Const SOLOUD_XAUDIO2:Int = 5
Const FLANGERFILTER_DELAY:Int = 1
Const SOLOUD_WINMM:Int = 4
Const SOLOUD_OSS:Int = 7

' Functions
Global Soloud_destroy:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_destroy")
Global Soloud_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Soloud_create")
Global Soloud_init:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_init")
Global Soloud_initEx:Int (aSoloud:Byte Ptr, aFlags:Int, aBackend:Int, aSamplerate:Int, aBufferSize:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_initEx")
Global Soloud_deinit:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_deinit")
Global Soloud_getVersion:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_getVersion")
Global Soloud_getErrorString:Byte Ptr (aSoloud:Byte Ptr, aErrorCode:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getErrorString")
Global Soloud_play:Int (aSoloud:Byte Ptr, aSound:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_play")
Global Soloud_playEx:Int (aSoloud:Byte Ptr, aSound:Byte Ptr, aVolume:Float, aPan:Float, aPaused:Int, aBus:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_playEx")
Global Soloud_playClocked:Int (aSoloud:Byte Ptr, aSoundTime:Double, aSound:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_playClocked")
Global Soloud_playClockedEx:Int (aSoloud:Byte Ptr, aSoundTime:Double, aSound:Byte Ptr, aVolume:Float, aPan:Float, aBus:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_playClockedEx")
Global Soloud_seek:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aSeconds:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_seek")
Global Soloud_stop:Int (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_stop")
Global Soloud_stopAll:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_stopAll")
Global Soloud_stopAudioSource:Int (aSoloud:Byte Ptr, aSound:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_stopAudioSource")
Global Soloud_setFilterParameter:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aFilterId:Int, aAttributeId:Int, aValue:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setFilterParameter")
Global Soloud_getFilterParameter:Float (aSoloud:Byte Ptr, aVoiceHandle:Int, aFilterId:Int, aAttributeId:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getFilterParameter")
Global Soloud_fadeFilterParameter:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aFilterId:Int, aAttributeId:Int, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_fadeFilterParameter")
Global Soloud_oscillateFilterParameter:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aFilterId:Int, aAttributeId:Int, aFrom:Float, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_oscillateFilterParameter")
Global Soloud_getStreamTime:Double (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getStreamTime")
Global Soloud_getPause:Int (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getPause")
Global Soloud_getVolume:Float (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getVolume")
Global Soloud_getPan:Float (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getPan")
Global Soloud_getSamplerate:Float (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getSamplerate")
Global Soloud_getProtectVoice:Int (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getProtectVoice")
Global Soloud_getActiveVoiceCount:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_getActiveVoiceCount")
Global Soloud_isValidVoiceHandle:Int (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_isValidVoiceHandle")
Global Soloud_getRelativePlaySpeed:Float (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getRelativePlaySpeed")
Global Soloud_getPostClipScaler:Float (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_getPostClipScaler")
Global Soloud_getGlobalVolume:Float (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_getGlobalVolume")
Global Soloud_setGlobalVolume:Int (aSoloud:Byte Ptr, aVolume:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setGlobalVolume")
Global Soloud_setPostClipScaler:Int (aSoloud:Byte Ptr, aScaler:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setPostClipScaler")
Global Soloud_setPause:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aPause:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_setPause")
Global Soloud_setPauseAll:Int (aSoloud:Byte Ptr, aPause:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_setPauseAll")
Global Soloud_setRelativePlaySpeed:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aSpeed:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setRelativePlaySpeed")
Global Soloud_setProtectVoice:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aProtect:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_setProtectVoice")
Global Soloud_setSamplerate:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aSamplerate:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setSamplerate")
Global Soloud_setPan:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aPan:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setPan")
Global Soloud_setPanAbsolute:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aLVolume:Float, aRVolume:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setPanAbsolute")
Global Soloud_setVolume:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aVolume:Float) "win32" = GetProcAddress (SoloudLib, "Soloud_setVolume")
Global Soloud_setDelaySamples:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aSamples:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_setDelaySamples")
Global Soloud_fadeVolume:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_fadeVolume")
Global Soloud_fadePan:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_fadePan")
Global Soloud_fadeRelativePlaySpeed:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_fadeRelativePlaySpeed")
Global Soloud_fadeGlobalVolume:Int (aSoloud:Byte Ptr, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_fadeGlobalVolume")
Global Soloud_schedulePause:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_schedulePause")
Global Soloud_scheduleStop:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_scheduleStop")
Global Soloud_oscillateVolume:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aFrom:Float, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_oscillateVolume")
Global Soloud_oscillatePan:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aFrom:Float, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_oscillatePan")
Global Soloud_oscillateRelativePlaySpeed:Int (aSoloud:Byte Ptr, aVoiceHandle:Int, aFrom:Float, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_oscillateRelativePlaySpeed")
Global Soloud_oscillateGlobalVolume:Int (aSoloud:Byte Ptr, aFrom:Float, aTo:Float, aTime:Double) "win32" = GetProcAddress (SoloudLib, "Soloud_oscillateGlobalVolume")
Global Soloud_setGlobalFilter:Int (aSoloud:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_setGlobalFilter")
Global Soloud_setVisualizationEnable:Int (aSoloud:Byte Ptr, aEnable:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_setVisualizationEnable")
Global Soloud_calcFFT:Byte Ptr (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_calcFFT")
Global Soloud_getWave:Byte Ptr (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_getWave")
Global Soloud_getLoopCount:Int (aSoloud:Byte Ptr, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_getLoopCount")
Global Soloud_createVoiceGroup:Int (aSoloud:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Soloud_createVoiceGroup")
Global Soloud_destroyVoiceGroup:Int (aSoloud:Byte Ptr, aVoiceGroupHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_destroyVoiceGroup")
Global Soloud_addVoiceToGroup:Int (aSoloud:Byte Ptr, aVoiceGroupHandle:Int, aVoiceHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_addVoiceToGroup")
Global Soloud_isVoiceGroup:Int (aSoloud:Byte Ptr, aVoiceGroupHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_isVoiceGroup")
Global Soloud_isVoiceGroupEmpty:Int (aSoloud:Byte Ptr, aVoiceGroupHandle:Int) "win32" = GetProcAddress (SoloudLib, "Soloud_isVoiceGroupEmpty")
Global BiquadResonantFilter_destroy:Int (aBiquadResonantFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "BiquadResonantFilter_destroy")
Global BiquadResonantFilter_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "BiquadResonantFilter_create")
Global BiquadResonantFilter_setParams:Int (aBiquadResonantFilter:Byte Ptr, aType:Int, aSampleRate:Float, aFrequency:Float, aResonance:Float) "win32" = GetProcAddress (SoloudLib, "BiquadResonantFilter_setParams")
Global Bus_destroy:Int (aBus:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_destroy")
Global Bus_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Bus_create")
Global Bus_setFilter:Int (aBus:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_setFilter")
Global Bus_play:Int (aBus:Byte Ptr, aSound:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_play")
Global Bus_playEx:Int (aBus:Byte Ptr, aSound:Byte Ptr, aVolume:Float, aPan:Float, aPaused:Int) "win32" = GetProcAddress (SoloudLib, "Bus_playEx")
Global Bus_playClocked:Int (aBus:Byte Ptr, aSoundTime:Double, aSound:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_playClocked")
Global Bus_playClockedEx:Int (aBus:Byte Ptr, aSoundTime:Double, aSound:Byte Ptr, aVolume:Float, aPan:Float) "win32" = GetProcAddress (SoloudLib, "Bus_playClockedEx")
Global Bus_setVisualizationEnable:Int (aBus:Byte Ptr, aEnable:Int) "win32" = GetProcAddress (SoloudLib, "Bus_setVisualizationEnable")
Global Bus_calcFFT:Byte Ptr (aBus:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_calcFFT")
Global Bus_getWave:Byte Ptr (aBus:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_getWave")
Global Bus_setLooping:Int (aBus:Byte Ptr, aLoop:Int) "win32" = GetProcAddress (SoloudLib, "Bus_setLooping")
Global Bus_stop:Int (aBus:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Bus_stop")
Global EchoFilter_destroy:Int (aEchoFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "EchoFilter_destroy")
Global EchoFilter_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "EchoFilter_create")
Global EchoFilter_setParams:Int (aEchoFilter:Byte Ptr, aDelay:Float) "win32" = GetProcAddress (SoloudLib, "EchoFilter_setParams")
Global EchoFilter_setParamsEx:Int (aEchoFilter:Byte Ptr, aDelay:Float, aDecay:Float, aFilter:Float) "win32" = GetProcAddress (SoloudLib, "EchoFilter_setParamsEx")
Global FFTFilter_destroy:Int (aFFTFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "FFTFilter_destroy")
Global FFTFilter_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "FFTFilter_create")
Global FFTFilter_setParameters:Int (aFFTFilter:Byte Ptr, aShift:Int) "win32" = GetProcAddress (SoloudLib, "FFTFilter_setParameters")
Global FFTFilter_setParametersEx:Int (aFFTFilter:Byte Ptr, aShift:Int, aCombine:Int, aScale:Float) "win32" = GetProcAddress (SoloudLib, "FFTFilter_setParametersEx")
Global FlangerFilter_destroy:Int (aFlangerFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "FlangerFilter_destroy")
Global FlangerFilter_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "FlangerFilter_create")
Global FlangerFilter_setParams:Int (aFlangerFilter:Byte Ptr, aDelay:Float, aFreq:Float) "win32" = GetProcAddress (SoloudLib, "FlangerFilter_setParams")
Global LofiFilter_destroy:Int (aLofiFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "LofiFilter_destroy")
Global LofiFilter_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "LofiFilter_create")
Global LofiFilter_setParams:Int (aLofiFilter:Byte Ptr, aSampleRate:Float, aBitdepth:Float) "win32" = GetProcAddress (SoloudLib, "LofiFilter_setParams")
Global Modplug_destroy:Int (aModplug:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Modplug_destroy")
Global Modplug_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Modplug_create")
Global Modplug_load:Int (aModplug:Byte Ptr, aFilename:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Modplug_load")
Global Modplug_setLooping:Int (aModplug:Byte Ptr, aLoop:Int) "win32" = GetProcAddress (SoloudLib, "Modplug_setLooping")
Global Modplug_setFilter:Int (aModplug:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Modplug_setFilter")
Global Modplug_stop:Int (aModplug:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Modplug_stop")
Global Prg_destroy:Int (aPrg:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Prg_destroy")
Global Prg_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Prg_create")
Global Prg_rand:Int (aPrg:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Prg_rand")
Global Prg_srand:Int (aPrg:Byte Ptr, aSeed:Int) "win32" = GetProcAddress (SoloudLib, "Prg_srand")
Global Sfxr_destroy:Int (aSfxr:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Sfxr_destroy")
Global Sfxr_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Sfxr_create")
Global Sfxr_resetParams:Int (aSfxr:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Sfxr_resetParams")
Global Sfxr_loadParams:Int (aSfxr:Byte Ptr, aFilename:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Sfxr_loadParams")
Global Sfxr_loadPreset:Int (aSfxr:Byte Ptr, aPresetNo:Int, aRandSeed:Int) "win32" = GetProcAddress (SoloudLib, "Sfxr_loadPreset")
Global Sfxr_setLooping:Int (aSfxr:Byte Ptr, aLoop:Int) "win32" = GetProcAddress (SoloudLib, "Sfxr_setLooping")
Global Sfxr_setFilter:Int (aSfxr:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Sfxr_setFilter")
Global Sfxr_stop:Int (aSfxr:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Sfxr_stop")
Global Speech_destroy:Int (aSpeech:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Speech_destroy")
Global Speech_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Speech_create")
Global Speech_setText:Int (aSpeech:Byte Ptr, aText:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Speech_setText")
Global Speech_setLooping:Int (aSpeech:Byte Ptr, aLoop:Int) "win32" = GetProcAddress (SoloudLib, "Speech_setLooping")
Global Speech_setFilter:Int (aSpeech:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Speech_setFilter")
Global Speech_stop:Int (aSpeech:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Speech_stop")
Global Wav_destroy:Int (aWav:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Wav_destroy")
Global Wav_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "Wav_create")
Global Wav_load:Int (aWav:Byte Ptr, aFilename:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Wav_load")
Global Wav_loadMem:Int (aWav:Byte Ptr, aMem:Byte Ptr, aLength:Int) "win32" = GetProcAddress (SoloudLib, "Wav_loadMem")
Global Wav_getLength:Double (aWav:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Wav_getLength")
Global Wav_setLooping:Int (aWav:Byte Ptr, aLoop:Int) "win32" = GetProcAddress (SoloudLib, "Wav_setLooping")
Global Wav_setFilter:Int (aWav:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Wav_setFilter")
Global Wav_stop:Int (aWav:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "Wav_stop")
Global WavStream_destroy:Int (aWavStream:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "WavStream_destroy")
Global WavStream_create:Byte Ptr () "win32" = GetProcAddress (SoloudLib, "WavStream_create")
Global WavStream_load:Int (aWavStream:Byte Ptr, aFilename:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "WavStream_load")
Global WavStream_getLength:Double (aWavStream:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "WavStream_getLength")
Global WavStream_setLooping:Int (aWavStream:Byte Ptr, aLoop:Int) "win32" = GetProcAddress (SoloudLib, "WavStream_setLooping")
Global WavStream_setFilter:Int (aWavStream:Byte Ptr, aFilterId:Int, aFilter:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "WavStream_setFilter")
Global WavStream_stop:Int (aWavStream:Byte Ptr) "win32" = GetProcAddress (SoloudLib, "WavStream_stop")
