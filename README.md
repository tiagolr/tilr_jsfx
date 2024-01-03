# Effects

## MSEG-1

MSEG-1 is a multi-segment LFO / Envelope generator

![](doc/mseg1.png)

Features:

* Tempo sync or hz rate
* LFO and MIDI trigger modes
* Paint mode - erase, line, saw up, saw down ..
* Point type - hold, curve, s-curve, stairs ..
* Output smooth and attack-release smooth

## ADSR-1

ADSR-1 is an ADSR envelope generator

![](doc/adsr1.png)

#### Features:

* Multi-segments / control points per stage
* Sustain looping
* Output smooth

## GATE-1

GATE-1 is an envelope generator for gate/volume control

![](doc/gate1.png)

#### Features:

* Multi-segment editor
* 12 patterns triggered by midi notes
* Paint mode - erase, line, saw up, saw down ..
* Point type - hold, curve, s-curve, stairs ..
* Tempo sync or lfo rate (Hz)
* Attack and release smooth
* Pre and post waveform display
* Global tension control

## TIME-1

TIME-1 is a playback/time and pitch editor similar to plugins like GrossBeat and TimeShaper.

![](doc/time1.png)

#### Features:

* Time and pitch envelope editor
* 12 patterns triggered by midi notes
* Paint mode - erase, line
* Point type - hold, curve, s-curve, stairs ..
* Anti clicking with 3 modes (Off, Low, High)
* Pre and post waveform display

## SKFilter

SKFilter (or Saikes filters) is a set of unique filters extracted from [Yutani Bass](https://github.com/JoepVanlier/JSFX/tree/master/Yutani)

![](doc/skfilter.png)

#### Features
* 29 filter types
* Non-linear analog modelled filters
* Filter drive
* Filter modes and morphing
* Oversampling up to 8x

## QuickDelay

Simple delay with ping-pong mode, tempo sync, feedback filters and pitch shift.

![](doc/qdelay.png)

#### Features:

* Normal and ping-pong modes
* Ping-pong stereo width control
* Tempo sync
* Low pass and high pass feedback filters with Q controls
* Pitch shifting
* Delay modulation

## QuickDualDelay

Dual delay with independent or sync times, ping-pong mode, tempo sync, feedback filters and pitch shift.

![](doc/qddelay.png)

#### Features

* Dual delay with independent or sync time and feedback
* Normal and ping-pong modes
* Ping-pong stereo width control
* Tempo sync
* Low pass and high pass feedback filters with Q controls
* Pitch shifting
* Delay modulation

## QDelay

A nicer interface for QuickDualDelay.

![](doc/qdelay2.png)]

## QuickFilter

Simple filter with 9 modes and smooth interpolation from ReEQ.

![](doc/qfilter.png)

## Notes to CC

Convert midi notes to CC messages, useful for keytracking modulation.

Supports configs like min and max note, min and max CC values, off notes value and more.

# Synths

## JS3Osc

JSFX polyphonic synth based of IL 3xOsc.

![](doc/js3osc.png)

#### Features:

* Polyphonic voicing
* Filter, pitch and amplitude envelopes per voice
* Three oscillators with 6 wave types
* Oscillator phase stereo detuning and offset

## JSwavesynth

JSFX polyphonic synth with a unison engine.

![](doc/jswavesynth.png)

#### Features:

* Single cycle waveforms read from wav files
* Polyphonic voices with independent adsr
* 8 unison voices with detune and panning controls
* ADSR for volume pitch and filter

## JSAdditiv

Polyphonic additive synthesizer

![](doc/jsadditiv.png)

#### Features:

* Wavetable oscillator that reads single cycle waveforms from disk
* Additive synthesis engine that allows to modify the wave
* Wave editors for harmonics amplitude and phase
* 8 voices unison engine
* Pitch, amplitude and filter adsr

## JSModulator

Polyphonic FM synth with 4 operators

![](doc/jsmodulator.png)

#### Features:

* 4 wavetable operators with additive synthesis
* FM matrix 4x4
* Global envelope and envelope per operator
* Operator harmonics and phase editor
* Filter per voice with envelope ADSR
* Envelope curve/tension controls

## JSDrumpad


JSFX drumpad synth inspired by vsts like Microtonic and DSK Synthdrums.

![](doc/jsdrumpad.png)

#### Features:

* 1x OSC (Sine, Triangle, Saw, or Square wave)
* 1x Noise generator (Stereo or mono)
* 3x Envelopes (osc, pitch and noise)
* 2x Filter (Noise color/lp, LowPass, BandPass and HighPass)
* 1x Distortion (Tube)
* 1x Band EQ

## JSDrumsynth

Lightweight JSFX drum synth capable of sounding as good (or as bad) as other vsts like Microtonic and DSK Synthdrums.

![](doc/jsdrumsynth.png)

### Features 7x Pads with:

* 1x OSC (Sine, Triangle, Saw, or Square wave)
* 1x Noise generator (Stereo or mono)
* 3x Envelopes (osc, pitch and noise)
* 2x Filter (Noise color/lp, LowPass, BandPass and HighPass)
* 1x Distortion (Tube)
* 1x Band EQ
