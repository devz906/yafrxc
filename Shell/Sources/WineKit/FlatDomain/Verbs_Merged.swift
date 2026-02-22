//
// Verbs+App.swift
// WineKit
// 
// Source: https://github.com/Winetricks/winetricks
//
// Automatically generated on 1.3.2025.
//

import Foundation

extension Winetricks {
	/// Winetricks verbs from App.txt
	public enum App: String, Hashable, Equatable, Codable, CaseIterable, CustomStringConvertible, Sendable {
		/// 3M Cloud Library (3M Company, 2015)
		case _3mLibrary = "3m_library"
		/// 7-Zip 24.09 (Igor Pavlov, 2024)
		case _7zip = "7zip"
		/// Adobe Digital Editions 1.7 (Adobe, 2011)
		case adobeDiged = "adobe_diged"
		/// Adobe Digital Editions 4.5 (Adobe, 2015)
		case adobeDiged4 = "adobe_diged4"
		/// AutoHotKey (autohotkey.org, 2010)
		case autohotkey = "autohotkey"
		/// BusyBox FRP-4621-gf3c5e8bc3 (Ron Yorston / Busybox authors, 2021)
		case busybox = "busybox"
		/// CMake 2.8 (Kitware, 2013)
		case cmake = "cmake"
		/// Standard RGB color profile (Microsoft, 2005)
		case colorprofile = "colorprofile"
		/// MS ActiveX Control Pad (Microsoft, 1997)
		case controlpad = "controlpad"
		/// Control Spy 6  (Microsoft, 2005)
		case controlspy = "controlspy"
		/// Debug monitor (Mark Russinovich, 2019)
		case dbgview = "dbgview"
		/// Dependency Walker (Steve P. Miller, 2006)
		case depends = "depends"
		/// MS .NET 2.0 SDK (Microsoft, 2006)
		case dotnet20sdk = "dotnet20sdk"
		/// MS DirectX SDK, August 2006 (developers only) (Microsoft, 2006)
		case dxsdkAug2006 = "dxsdk_aug2006"
		/// MS DirectX SDK, June 2010 (developers only) (Microsoft, 2010)
		case dxsdkJun2010 = "dxsdk_jun2010"
		/// Window hooker to run fullscreen programs in window and much more... (ghotik, 2011)
		case dxwnd = "dxwnd"
		/// emu8086 (emu8086.com, 2015)
		case emu8086 = "emu8086"
		/// Lego Mindstorms EV3 Home Edition (Lego, 2014)
		case ev3 = "ev3"
		/// Firefox 51.0 (Mozilla, 2017)
		case firefox = "firefox"
		/// Font Xplorer 1.2.2 (Moon Software, 2001)
		case fontxplorer = "fontxplorer"
		/// foobar2000 v1.4 (Peter Pawlowski, 2018)
		case foobar2000 = "foobar2000"
		/// HTML Help Workshop (Microsoft, 2000)
		case hhw = "hhw"
		/// GNU Icecat 31.7.0 (GNU Foundation, 2015)
		case iceweasel = "iceweasel"
		/// Irfanview (Irfan Skiljan, 2016)
		case irfanview = "irfanview"
		/// Amazon Kindle (Amazon, 2017)
		case kindle = "kindle"
		/// Kobo e-book reader (Kobo, 2011)
		case kobo = "kobo"
		/// Minimalist GNU for Windows, including GCC for Windows (GNU, 2013)
		case mingw = "mingw"
		/// Mozilla build environment (Mozilla Foundation, 2015)
		case mozillabuild = "mozillabuild"
		/// Media Player Classic - Home Cinema (doom9 folks, 2014)
		case mpc = "mpc"
		/// MS Paint (Microsoft, 2010)
		case mspaint = "mspaint"
		/// Meta Trader 4 (, 2005)
		case mt4 = "mt4"
		/// NJStar Chinese Word Processor trial (NJStar, 2015)
		case njcwpTrial = "njcwp_trial"
		/// NJStar Japanese Word Processor trial (NJStar, 2009)
		case njjwpTrial = "njjwp_trial"
		/// Nook for PC (e-book reader) (Barnes & Noble, 2011)
		case nook = "nook"
		/// Notepad++ (Don Ho, 2019)
		case npp = "npp"
		/// OllyDbg (ollydbg.de, 2004)
		case ollydbg110 = "ollydbg110"
		/// OllyDbg (ollydbg.de, 2010)
		case ollydbg200 = "ollydbg200"
		/// OllyDbg (ollydbg.de, 2013)
		case ollydbg201 = "ollydbg201"
		/// Open Watcom C/C++ compiler (can compile win16 code!) (Watcom, 2010)
		case openwatcom = "openwatcom"
		/// EA Origin (EA, 2011)
		case origin = "origin"
		/// Process Explorer (Steve P. Miller, 2006)
		case procexp = "procexp"
		/// Protection ID (CDKiLLER & TippeX, 2016)
		case protectionid = "protectionid"
		/// MS Platform SDK 2003 (Microsoft, 2003)
		case psdk2003 = "psdk2003"
		/// MS Windows 7.1 SDK (Microsoft, 2010)
		case psdkwin71 = "psdkwin71"
		/// Safari (Apple, 2010)
		case safari = "safari"
		/// SketchUp 8 (Google, 2012)
		case sketchup = "sketchup"
		/// Steam (Valve, 2010)
		case steam = "steam"
		/// Ubisoft Connect (Ubisoft, 2020)
		case ubisoftconnect = "ubisoftconnect"
		/// µTorrent 2.2.1 (BitTorrent, 2011)
		case utorrent = "utorrent"
		/// µTorrent 3.4 (BitTorrent, 2011)
		case utorrent3 = "utorrent3"
		/// MS Visual C++ 2005 Express (Microsoft, 2005)
		case vc2005express = "vc2005express"
		/// MS Visual C++ 2005 Express SP1 (Microsoft, 2007)
		case vc2005expresssp1 = "vc2005expresssp1"
		/// MS Visual C++ 2005 Trial (Microsoft, 2005)
		case vc2005trial = "vc2005trial"
		/// MS Visual C++ 2008 Express (Microsoft, 2008)
		case vc2008express = "vc2008express"
		/// MS Visual C++ 2010 Express (Microsoft, 2010)
		case vc2010express = "vc2010express"
		/// VLC media player 2.2.1 (VideoLAN, 2015)
		case vlc = "vlc"
		/// MS Visual Studio Build Tools 2019 (Microsoft, 2019)
		case vstools2019 = "vstools2019"
		/// Winamp (Radionomy (AOL (Nullsoft)), 2013)
		case winamp = "winamp"
		/// WinRAR 6.11 (RARLAB, 1993)
		case winrar = "winrar"
		/// MS Windows Media Encoder 9 (broken in Wine) (Microsoft, 2002)
		case wme9 = "wme9"

		// MARK: - CustomStringConvertible

		public var description: String {
			switch self {
			case ._3mLibrary:
				return "3M Cloud Library (3M Company, 2015)"
			case ._7zip:
				return "7-Zip 24.09 (Igor Pavlov, 2024)"
			case .adobeDiged:
				return "Adobe Digital Editions 1.7 (Adobe, 2011)"
			case .adobeDiged4:
				return "Adobe Digital Editions 4.5 (Adobe, 2015)"
			case .autohotkey:
				return "AutoHotKey (autohotkey.org, 2010)"
			case .busybox:
				return "BusyBox FRP-4621-gf3c5e8bc3 (Ron Yorston / Busybox authors, 2021)"
			case .cmake:
				return "CMake 2.8 (Kitware, 2013)"
			case .colorprofile:
				return "Standard RGB color profile (Microsoft, 2005)"
			case .controlpad:
				return "MS ActiveX Control Pad (Microsoft, 1997)"
			case .controlspy:
				return "Control Spy 6  (Microsoft, 2005)"
			case .dbgview:
				return "Debug monitor (Mark Russinovich, 2019)"
			case .depends:
				return "Dependency Walker (Steve P. Miller, 2006)"
			case .dotnet20sdk:
				return "MS .NET 2.0 SDK (Microsoft, 2006)"
			case .dxsdkAug2006:
				return "MS DirectX SDK, August 2006 (developers only) (Microsoft, 2006)"
			case .dxsdkJun2010:
				return "MS DirectX SDK, June 2010 (developers only) (Microsoft, 2010)"
			case .dxwnd:
				return "Window hooker to run fullscreen programs in window and much more... (ghotik, 2011)"
			case .emu8086:
				return "emu8086 (emu8086.com, 2015)"
			case .ev3:
				return "Lego Mindstorms EV3 Home Edition (Lego, 2014)"
			case .firefox:
				return "Firefox 51.0 (Mozilla, 2017)"
			case .fontxplorer:
				return "Font Xplorer 1.2.2 (Moon Software, 2001)"
			case .foobar2000:
				return "foobar2000 v1.4 (Peter Pawlowski, 2018)"
			case .hhw:
				return "HTML Help Workshop (Microsoft, 2000)"
			case .iceweasel:
				return "GNU Icecat 31.7.0 (GNU Foundation, 2015)"
			case .irfanview:
				return "Irfanview (Irfan Skiljan, 2016)"
			case .kindle:
				return "Amazon Kindle (Amazon, 2017)"
			case .kobo:
				return "Kobo e-book reader (Kobo, 2011)"
			case .mingw:
				return "Minimalist GNU for Windows, including GCC for Windows (GNU, 2013)"
			case .mozillabuild:
				return "Mozilla build environment (Mozilla Foundation, 2015)"
			case .mpc:
				return "Media Player Classic - Home Cinema (doom9 folks, 2014)"
			case .mspaint:
				return "MS Paint (Microsoft, 2010)"
			case .mt4:
				return "Meta Trader 4 (, 2005)"
			case .njcwpTrial:
				return "NJStar Chinese Word Processor trial (NJStar, 2015)"
			case .njjwpTrial:
				return "NJStar Japanese Word Processor trial (NJStar, 2009)"
			case .nook:
				return "Nook for PC (e-book reader) (Barnes & Noble, 2011)"
			case .npp:
				return "Notepad++ (Don Ho, 2019)"
			case .ollydbg110:
				return "OllyDbg (ollydbg.de, 2004)"
			case .ollydbg200:
				return "OllyDbg (ollydbg.de, 2010)"
			case .ollydbg201:
				return "OllyDbg (ollydbg.de, 2013)"
			case .openwatcom:
				return "Open Watcom C/C++ compiler (can compile win16 code!) (Watcom, 2010)"
			case .origin:
				return "EA Origin (EA, 2011)"
			case .procexp:
				return "Process Explorer (Steve P. Miller, 2006)"
			case .protectionid:
				return "Protection ID (CDKiLLER & TippeX, 2016)"
			case .psdk2003:
				return "MS Platform SDK 2003 (Microsoft, 2003)"
			case .psdkwin71:
				return "MS Windows 7.1 SDK (Microsoft, 2010)"
			case .safari:
				return "Safari (Apple, 2010)"
			case .sketchup:
				return "SketchUp 8 (Google, 2012)"
			case .steam:
				return "Steam (Valve, 2010)"
			case .ubisoftconnect:
				return "Ubisoft Connect (Ubisoft, 2020)"
			case .utorrent:
				return "µTorrent 2.2.1 (BitTorrent, 2011)"
			case .utorrent3:
				return "µTorrent 3.4 (BitTorrent, 2011)"
			case .vc2005express:
				return "MS Visual C++ 2005 Express (Microsoft, 2005)"
			case .vc2005expresssp1:
				return "MS Visual C++ 2005 Express SP1 (Microsoft, 2007)"
			case .vc2005trial:
				return "MS Visual C++ 2005 Trial (Microsoft, 2005)"
			case .vc2008express:
				return "MS Visual C++ 2008 Express (Microsoft, 2008)"
			case .vc2010express:
				return "MS Visual C++ 2010 Express (Microsoft, 2010)"
			case .vlc:
				return "VLC media player 2.2.1 (VideoLAN, 2015)"
			case .vstools2019:
				return "MS Visual Studio Build Tools 2019 (Microsoft, 2019)"
			case .winamp:
				return "Winamp (Radionomy (AOL (Nullsoft)), 2013)"
			case .winrar:
				return "WinRAR 6.11 (RARLAB, 1993)"
			case .wme9:
				return "MS Windows Media Encoder 9 (broken in Wine) (Microsoft, 2002)"
			}
		}
	}
}
//
// Verbs+Benchmark.swift
// WineKit
// 
// Source: https://github.com/Winetricks/winetricks
//
// Automatically generated on 1.3.2025.
//

import Foundation

extension Winetricks {
	/// Winetricks verbs from Benchmark.txt
	public enum Benchmark: String, Hashable, Equatable, Codable, CaseIterable, CustomStringConvertible, Sendable {
		/// 3D Mark 03 (Futuremark, 2003)
		case _3dmark03 = "3dmark03"
		/// 3D Mark 05 (Futuremark, 2005)
		case _3dmark05 = "3dmark05"
		/// 3D Mark 06 (Futuremark, 2006)
		case _3dmark06 = "3dmark06"
		/// 3DMark2000 (MadOnion.com, 2000)
		case _3dmark2000 = "3dmark2000"
		/// 3DMark2001 (MadOnion.com, 2001)
		case _3dmark2001 = "3dmark2001"
		/// S.T.A.L.K.E.R.: Call of Pripyat benchmark (GSC Game World, 2009)
		case stalkerPripyatBench = "stalker_pripyat_bench"
		/// Unigen Heaven 2.1 Benchmark (Unigen, 2010)
		case unigineHeaven = "unigine_heaven"
		/// wglgears (Clinton L. Jeffery, 2005)
		case wglgears = "wglgears"

		// MARK: - CustomStringConvertible

		public var description: String {
			switch self {
			case ._3dmark03:
				return "3D Mark 03 (Futuremark, 2003)"
			case ._3dmark05:
				return "3D Mark 05 (Futuremark, 2005)"
			case ._3dmark06:
				return "3D Mark 06 (Futuremark, 2006)"
			case ._3dmark2000:
				return "3DMark2000 (MadOnion.com, 2000)"
			case ._3dmark2001:
				return "3DMark2001 (MadOnion.com, 2001)"
			case .stalkerPripyatBench:
				return "S.T.A.L.K.E.R.: Call of Pripyat benchmark (GSC Game World, 2009)"
			case .unigineHeaven:
				return "Unigen Heaven 2.1 Benchmark (Unigen, 2010)"
			case .wglgears:
				return "wglgears (Clinton L. Jeffery, 2005)"
			}
		}
	}
}
//
// Verbs+DLL.swift
// WineKit
// 
// Source: https://github.com/Winetricks/winetricks
//
// Automatically generated on 1.3.2025.
//

import Foundation

extension Winetricks {
	/// Winetricks verbs from DLL.txt
	public enum DLL: String, Hashable, Equatable, Codable, CaseIterable, CustomStringConvertible, Sendable {
		/// All codecs (dirac, ffdshow, icodecs, cinepak, l3codecx, xvid) except wmp (various, 1995-2009)
		case allcodecs = "allcodecs"
		/// MS amstream.dll (Microsoft, 2011)
		case amstream = "amstream"
		/// MS Access 2007 runtime (Microsoft, 2007)
		case art2k7min = "art2k7min"
		/// MS Access 2000 runtime (Microsoft, 2000)
		case art2kmin = "art2kmin"
		/// Adobe Type Manager (Adobe, 2009)
		case atmlib = "atmlib"
		/// MS avifil32 (Microsoft, 2004)
		case avifil32 = "avifil32"
		/// RAD Game Tools binkw32.dll (RAD Game Tools, Inc., 2000)
		case binkw32 = "binkw32"
		/// Microsoft cabinet.dll (Microsoft, 2002)
		case cabinet = "cabinet"
		/// Cinepak Codec (Radius, 1995)
		case cinepak = "cinepak"
		/// MS cmd.exe (Microsoft, 2004)
		case cmd = "cmd"
		/// Reimplentation of ddraw for CnC games (CnCNet, 2021)
		case cncDdraw = "cnc_ddraw"
		/// MS common controls 5.80 (Microsoft, 2001)
		case comctl32 = "comctl32"
		/// MS comctl32.ocx and mscomctl.ocx, comctl32 wrappers for VB6 (Microsoft, 2012)
		case comctl32ocx = "comctl32ocx"
		/// Common Dialog ActiveX Control for VB6 (Microsoft, 2012)
		case comdlg32ocx = "comdlg32ocx"
		/// MS crypt32 (Microsoft, 2011)
		case crypt32 = "crypt32"
		/// MS crypt32 (Microsoft, 2004)
		case crypt32Winxp = "crypt32_winxp"
		/// Diablo 2 LoD Glide to OpenGL Wrapper (Bayaraa, 2023)
		case d2gl = "d2gl"
		/// MS d3dcompiler_42.dll (Microsoft, 2010)
		case d3dcompiler42 = "d3dcompiler_42"
		/// MS d3dcompiler_43.dll (Microsoft, 2010)
		case d3dcompiler43 = "d3dcompiler_43"
		/// MS d3dcompiler_46.dll (Microsoft, 2010)
		case d3dcompiler46 = "d3dcompiler_46"
		/// MS d3dcompiler_47.dll (Microsoft, FIXME)
		case d3dcompiler47 = "d3dcompiler_47"
		/// MS d3drm.dll (Microsoft, 2010)
		case d3drm = "d3drm"
		/// MS d3dx10_??.dll from DirectX user redistributable (Microsoft, 2010)
		case d3dx10 = "d3dx10"
		/// MS d3dx10_43.dll (Microsoft, 2010)
		case d3dx1043 = "d3dx10_43"
		/// MS d3dx11_42.dll (Microsoft, 2010)
		case d3dx1142 = "d3dx11_42"
		/// MS d3dx11_43.dll (Microsoft, 2010)
		case d3dx1143 = "d3dx11_43"
		/// MS d3dx9_??.dll from DirectX 9 redistributable (Microsoft, 2010)
		case d3dx9 = "d3dx9"
		/// MS d3dx9_24.dll (Microsoft, 2010)
		case d3dx924 = "d3dx9_24"
		/// MS d3dx9_25.dll (Microsoft, 2010)
		case d3dx925 = "d3dx9_25"
		/// MS d3dx9_26.dll (Microsoft, 2010)
		case d3dx926 = "d3dx9_26"
		/// MS d3dx9_27.dll (Microsoft, 2010)
		case d3dx927 = "d3dx9_27"
		/// MS d3dx9_28.dll (Microsoft, 2010)
		case d3dx928 = "d3dx9_28"
		/// MS d3dx9_29.dll (Microsoft, 2010)
		case d3dx929 = "d3dx9_29"
		/// MS d3dx9_30.dll (Microsoft, 2010)
		case d3dx930 = "d3dx9_30"
		/// MS d3dx9_31.dll (Microsoft, 2010)
		case d3dx931 = "d3dx9_31"
		/// MS d3dx9_32.dll (Microsoft, 2010)
		case d3dx932 = "d3dx9_32"
		/// MS d3dx9_33.dll (Microsoft, 2010)
		case d3dx933 = "d3dx9_33"
		/// MS d3dx9_34.dll (Microsoft, 2010)
		case d3dx934 = "d3dx9_34"
		/// MS d3dx9_35.dll (Microsoft, 2010)
		case d3dx935 = "d3dx9_35"
		/// MS d3dx9_36.dll (Microsoft, 2010)
		case d3dx936 = "d3dx9_36"
		/// MS d3dx9_37.dll (Microsoft, 2010)
		case d3dx937 = "d3dx9_37"
		/// MS d3dx9_38.dll (Microsoft, 2010)
		case d3dx938 = "d3dx9_38"
		/// MS d3dx9_39.dll (Microsoft, 2010)
		case d3dx939 = "d3dx9_39"
		/// MS d3dx9_40.dll (Microsoft, 2010)
		case d3dx940 = "d3dx9_40"
		/// MS d3dx9_41.dll (Microsoft, 2010)
		case d3dx941 = "d3dx9_41"
		/// MS d3dx9_42.dll (Microsoft, 2010)
		case d3dx942 = "d3dx9_42"
		/// MS d3dx9_43.dll (Microsoft, 2010)
		case d3dx943 = "d3dx9_43"
		/// MS d3dxof.dll from DirectX user redistributable (Microsoft, 2010)
		case d3dxof = "d3dxof"
		/// MS dbghelp (Microsoft, 2008)
		case dbghelp = "dbghelp"
		/// MS devenum.dll from DirectX user redistributable (Microsoft, 2010)
		case devenum = "devenum"
		/// MS dinput.dll; breaks mouse, use only on Rayman 2 etc. (Microsoft, 2010)
		case dinput = "dinput"
		/// MS DirectInput 8 from DirectX user redistributable (Microsoft, 2010)
		case dinput8 = "dinput8"
		/// The Dirac directshow filter v1.0.2 (Dirac, 2009)
		case dirac = "dirac"
		/// MS DirectMusic from DirectX user redistributable (Microsoft, 2010)
		case directmusic = "directmusic"
		/// MS DirectPlay from DirectX user redistributable (Microsoft, 2010)
		case directplay = "directplay"
		/// DirectShow runtime DLLs (amstream, qasf, qcap, qdvd, qedit, quartz) (Microsoft, 2011)
		case directshow = "directshow"
		/// MS DirectX 9 (Deprecated, no-op) (Microsoft, 2010)
		case directx9 = "directx9"
		/// MS dmband.dll from DirectX user redistributable (Microsoft, 2010)
		case dmband = "dmband"
		/// MS dmcompos.dll from DirectX user redistributable (Microsoft, 2010)
		case dmcompos = "dmcompos"
		/// MS dmime.dll from DirectX user redistributable (Microsoft, 2010)
		case dmime = "dmime"
		/// MS dmloader.dll from DirectX user redistributable (Microsoft, 2010)
		case dmloader = "dmloader"
		/// MS dmscript.dll from DirectX user redistributable (Microsoft, 2010)
		case dmscript = "dmscript"
		/// MS dmstyle.dll from DirectX user redistributable (Microsoft, 2010)
		case dmstyle = "dmstyle"
		/// MS dmsynth.dll from DirectX user redistributable (Microsoft, 2010)
		case dmsynth = "dmsynth"
		/// MS dmusic.dll from DirectX user redistributable (Microsoft, 2010)
		case dmusic = "dmusic"
		/// MS dmusic32.dll from DirectX user redistributable (Microsoft, 2006)
		case dmusic32 = "dmusic32"
		/// MS .NET 1.1 (Microsoft, 2003)
		case dotnet11 = "dotnet11"
		/// MS .NET 1.1 SP1 (Microsoft, 2004)
		case dotnet11sp1 = "dotnet11sp1"
		/// MS .NET 2.0 (Microsoft, 2006)
		case dotnet20 = "dotnet20"
		/// MS .NET 2.0 SP1 (Microsoft, 2008)
		case dotnet20sp1 = "dotnet20sp1"
		/// MS .NET 2.0 SP2 (Microsoft, 2009)
		case dotnet20sp2 = "dotnet20sp2"
		/// MS .NET 3.0 (Microsoft, 2006)
		case dotnet30 = "dotnet30"
		/// MS .NET 3.0 SP1 (Microsoft, 2007)
		case dotnet30sp1 = "dotnet30sp1"
		/// MS .NET 3.5 (Microsoft, 2007)
		case dotnet35 = "dotnet35"
		/// MS .NET 3.5 SP1 (Microsoft, 2008)
		case dotnet35sp1 = "dotnet35sp1"
		/// MS .NET 4.0 (Microsoft, 2011)
		case dotnet40 = "dotnet40"
		/// MS .NET 4.0 KB2468871 (Microsoft, 2011)
		case dotnet40Kb2468871 = "dotnet40_kb2468871"
		/// MS .NET 4.5 (Microsoft, 2012)
		case dotnet45 = "dotnet45"
		/// MS .NET 4.5.2 (Microsoft, 2012)
		case dotnet452 = "dotnet452"
		/// MS .NET 4.6 (Microsoft, 2015)
		case dotnet46 = "dotnet46"
		/// MS .NET 4.6.1 (Microsoft, 2015)
		case dotnet461 = "dotnet461"
		/// MS .NET 4.6.2 (Microsoft, 2016)
		case dotnet462 = "dotnet462"
		/// MS .NET 4.7.1 (Microsoft, 2017)
		case dotnet471 = "dotnet471"
		/// MS .NET 4.7.2 (Microsoft, 2018)
		case dotnet472 = "dotnet472"
		/// MS .NET 4.8 (Microsoft, 2019)
		case dotnet48 = "dotnet48"
		/// MS .NET Runtime 6.0 LTS (Microsoft, 2023)
		case dotnet6 = "dotnet6"
		/// MS .NET Runtime 7.0 LTS (Microsoft, 2023)
		case dotnet7 = "dotnet7"
		/// MS .NET Runtime 8.0 LTS (Microsoft, 2024)
		case dotnet8 = "dotnet8"
		/// MS .NET Runtime 9.0 LTS (Microsoft, 2024)
		case dotnet9 = "dotnet9"
		/// MS .NET Verifier (Microsoft, 2016)
		case dotnetVerifier = "dotnet_verifier"
		/// MS .NET Core Runtime 2.1 LTS (Microsoft, 2020)
		case dotnetcore2 = "dotnetcore2"
		/// MS .NET Core Runtime 3.1 LTS (Microsoft, 2020)
		case dotnetcore3 = "dotnetcore3"
		/// MS .NET Core Desktop Runtime 3.1 LTS (Microsoft, 2020)
		case dotnetcoredesktop3 = "dotnetcoredesktop3"
		/// MS .NET Desktop Runtime 6.0 LTS (Microsoft, 2023)
		case dotnetdesktop6 = "dotnetdesktop6"
		/// MS .NET Desktop Runtime 7.0 LTS (Microsoft, 2023)
		case dotnetdesktop7 = "dotnetdesktop7"
		/// MS .NET Desktop Runtime 8.0 LTS (Microsoft, 2024)
		case dotnetdesktop8 = "dotnetdesktop8"
		/// MS .NET Desktop Runtime 9.0 LTS (Microsoft, 2024)
		case dotnetdesktop9 = "dotnetdesktop9"
		/// Microsoft dpvoice dpvvox dpvacm Audio dlls (Microsoft, 2002)
		case dpvoice = "dpvoice"
		/// MS dsdmo.dll (Microsoft, 2010)
		case dsdmo = "dsdmo"
		/// MS DirectSound from DirectX user redistributable (Microsoft, 2010)
		case dsound = "dsound"
		/// MS dswave.dll from DirectX user redistributable (Microsoft, 2010)
		case dswave = "dswave"
		/// MS dx8vb.dll from DirectX 8.1 runtime (Microsoft, 2001)
		case dx8vb = "dx8vb"
		/// DirectX Diagnostic Tool (Microsoft, 2010)
		case dxdiag = "dxdiag"
		/// DirectX Diagnostic Library (Microsoft, 2011)
		case dxdiagn = "dxdiagn"
		/// DirectX Diagnostic Library (February 2010) (Microsoft, 2010)
		case dxdiagnFeb2010 = "dxdiagn_feb2010"
		/// MS dxtrans.dll (Microsoft, 2002)
		case dxtrans = "dxtrans"
		/// Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (latest) (Philip Rebohle, 2024)
		case dxvk = "dxvk"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0) (Philip Rebohle, 2017)
		case dxvk1000 = "dxvk1000"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0.1) (Philip Rebohle, 2017)
		case dxvk1001 = "dxvk1001"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0.2) (Philip Rebohle, 2017)
		case dxvk1002 = "dxvk1002"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0.3) (Philip Rebohle, 2017)
		case dxvk1003 = "dxvk1003"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.1.1) (Philip Rebohle, 2017)
		case dxvk1011 = "dxvk1011"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2) (Philip Rebohle, 2017)
		case dxvk1020 = "dxvk1020"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2.1) (Philip Rebohle, 2017)
		case dxvk1021 = "dxvk1021"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2.2) (Philip Rebohle, 2017)
		case dxvk1022 = "dxvk1022"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2.3) (Philip Rebohle, 2017)
		case dxvk1023 = "dxvk1023"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3) (Philip Rebohle, 2017)
		case dxvk1030 = "dxvk1030"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.1) (Philip Rebohle, 2017)
		case dxvk1031 = "dxvk1031"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.2) (Philip Rebohle, 2017)
		case dxvk1032 = "dxvk1032"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.3) (Philip Rebohle, 2017)
		case dxvk1033 = "dxvk1033"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.4) (Philip Rebohle, 2017)
		case dxvk1034 = "dxvk1034"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4) (Philip Rebohle, 2017)
		case dxvk1040 = "dxvk1040"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.1) (Philip Rebohle, 2017)
		case dxvk1041 = "dxvk1041"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.2) (Philip Rebohle, 2017)
		case dxvk1042 = "dxvk1042"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.3) (Philip Rebohle, 2017)
		case dxvk1043 = "dxvk1043"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.4) (Philip Rebohle, 2017)
		case dxvk1044 = "dxvk1044"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.5) (Philip Rebohle, 2017)
		case dxvk1045 = "dxvk1045"
		/// Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.6) (Philip Rebohle, 2017)
		case dxvk1046 = "dxvk1046"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5) (Philip Rebohle, 2017)
		case dxvk1050 = "dxvk1050"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.1) (Philip Rebohle, 2017)
		case dxvk1051 = "dxvk1051"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.2) (Philip Rebohle, 2017)
		case dxvk1052 = "dxvk1052"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.3) (Philip Rebohle, 2017)
		case dxvk1053 = "dxvk1053"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.4) (Philip Rebohle, 2017)
		case dxvk1054 = "dxvk1054"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.5) (Philip Rebohle, 2017)
		case dxvk1055 = "dxvk1055"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.6) (Philip Rebohle, 2017)
		case dxvk1060 = "dxvk1060"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.6.1) (Philip Rebohle, 2017)
		case dxvk1061 = "dxvk1061"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7) (Philip Rebohle, 2017)
		case dxvk1070 = "dxvk1070"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7.1) (Philip Rebohle, 2017)
		case dxvk1071 = "dxvk1071"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7.2) (Philip Rebohle, 2017)
		case dxvk1072 = "dxvk1072"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7.3) (Philip Rebohle, 2017)
		case dxvk1073 = "dxvk1073"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.8) (Philip Rebohle, 2017)
		case dxvk1080 = "dxvk1080"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.8.1) (Philip Rebohle, 2017)
		case dxvk1081 = "dxvk1081"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9) (Philip Rebohle, 2017)
		case dxvk1090 = "dxvk1090"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.1) (Philip Rebohle, 2017)
		case dxvk1091 = "dxvk1091"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.2) (Philip Rebohle, 2017)
		case dxvk1092 = "dxvk1092"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.3) (Philip Rebohle, 2017)
		case dxvk1093 = "dxvk1093"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.4) (Philip Rebohle, 2017)
		case dxvk1094 = "dxvk1094"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10) (Philip Rebohle, 2017)
		case dxvk1100 = "dxvk1100"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10.1) (Philip Rebohle, 2017)
		case dxvk1101 = "dxvk1101"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10.2) (Philip Rebohle, 2017)
		case dxvk1102 = "dxvk1102"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10.3) (Philip Rebohle, 2022)
		case dxvk1103 = "dxvk1103"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.0) (Philip Rebohle, 2022)
		case dxvk2000 = "dxvk2000"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.1) (Philip Rebohle, 2023)
		case dxvk2010 = "dxvk2010"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.2) (Philip Rebohle, 2023)
		case dxvk2020 = "dxvk2020"
		/// Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.3) (Philip Rebohle, 2023)
		case dxvk2030 = "dxvk2030"
		/// Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.4) (Philip Rebohle, 2024)
		case dxvk2040 = "dxvk2040"
		/// Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.4.1) (Philip Rebohle, 2024)
		case dxvk2041 = "dxvk2041"
		/// Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.5) (Philip Rebohle, 2024)
		case dxvk2050 = "dxvk2050"
		/// Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.5.1) (Philip Rebohle, 2024)
		case dxvk2051 = "dxvk2051"
		/// Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.5.2) (Philip Rebohle, 2024)
		case dxvk2052 = "dxvk2052"
		/// Alternative NVAPI Vulkan implementation on top of DXVK for Linux / Wine (0.6.1) (Jens Peters, 2023)
		case dxvkNvapi0061 = "dxvk_nvapi0061"
		/// MS Extensible Storage Engine (Microsoft, 2011)
		case esent = "esent"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (20.07) (Kron4ek, 2019)
		case faudio = "faudio"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.01) (Kron4ek, 2019)
		case faudio1901 = "faudio1901"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.02) (Kron4ek, 2019)
		case faudio1902 = "faudio1902"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.03) (Kron4ek, 2019)
		case faudio1903 = "faudio1903"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.04) (Kron4ek, 2019)
		case faudio1904 = "faudio1904"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.05) (Kron4ek, 2019)
		case faudio1905 = "faudio1905"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.06) (Kron4ek, 2019)
		case faudio1906 = "faudio1906"
		/// FAudio (xaudio reimplementation, with xna support) builds for win32 (19.06.07) (Kron4ek, 2019)
		case faudio190607 = "faudio190607"
		/// ffdshow video codecs (doom9 folks, 2010)
		case ffdshow = "ffdshow"
		/// Microsoft's filever, for dumping file version info (Microsoft, 20??)
		case filever = "filever"
		/// Gallium Nine Standalone (latest) (Gallium Nine Team, 2023)
		case galliumnine = "galliumnine"
		/// Gallium Nine Standalone (v0.2) (Gallium Nine Team, 2019)
		case galliumnine02 = "galliumnine02"
		/// Gallium Nine Standalone (v0.3) (Gallium Nine Team, 2019)
		case galliumnine03 = "galliumnine03"
		/// Gallium Nine Standalone (v0.4) (Gallium Nine Team, 2019)
		case galliumnine04 = "galliumnine04"
		/// Gallium Nine Standalone (v0.5) (Gallium Nine Team, 2019)
		case galliumnine05 = "galliumnine05"
		/// Gallium Nine Standalone (v0.6) (Gallium Nine Team, 2020)
		case galliumnine06 = "galliumnine06"
		/// Gallium Nine Standalone (v0.7) (Gallium Nine Team, 2020)
		case galliumnine07 = "galliumnine07"
		/// Gallium Nine Standalone (v0.8) (Gallium Nine Team, 2021)
		case galliumnine08 = "galliumnine08"
		/// Gallium Nine Standalone (v0.9) (Gallium Nine Team, 2023)
		case galliumnine09 = "galliumnine09"
		/// MS GDI+ (Microsoft, 2011)
		case gdiplus = "gdiplus"
		/// MS GDI+ (Microsoft, 2009)
		case gdiplusWinxp = "gdiplus_winxp"
		/// MS Games For Windows Live (xlive.dll) (Microsoft, 2008)
		case gfw = "gfw"
		/// GlideWrapper (Rolf Neuberger, 2005)
		case glidewrapper = "glidewrapper"
		/// The glut utility library for OpenGL (Mark J. Kilgard, 2001)
		case glut = "glut"
		/// General MIDI DLS Collection (Microsoft / Roland, 1999)
		case gmdls = "gmdls"
		/// MS hid (Microsoft, 2003)
		case hid = "hid"
		/// Indeo codecs (Intel, 1998)
		case icodecs = "icodecs"
		/// Internet Explorer 6 (Microsoft, 2002)
		case ie6 = "ie6"
		/// Internet Explorer 7 (Microsoft, 2008)
		case ie7 = "ie7"
		/// Internet Explorer 8 (Microsoft, 2009)
		case ie8 = "ie8"
		/// Cumulative Security Update for Internet Explorer 8 (Microsoft, 2014)
		case ie8Kb2936068 = "ie8_kb2936068"
		/// TLS 1.1 and 1.2 for Internet Explorer 8 (Microsoft, 2017)
		case ie8Tls12 = "ie8_tls12"
		/// MS Runtime Utility (Microsoft, 2011)
		case iertutil = "iertutil"
		/// MS itircl.dll (Microsoft, 1999)
		case itircl = "itircl"
		/// MS itss.dll (Microsoft, 1999)
		case itss = "itss"
		/// MS Jet 4.0 Service Pack 8 (Microsoft, 2003)
		case jet40 = "jet40"
		/// MPEG Layer-3 Audio Codec for Microsoft DirectShow (Microsoft, 2010)
		case l3codecx = "l3codecx"
		/// LAV Filters (Hendrik Leppkes, 2019)
		case lavfilters = "lavfilters"
		/// LAV Filters 0.70.2 (Hendrik Leppkes, 2017)
		case lavfilters702 = "lavfilters702"
		/// Microsoft Data Access Components 2.7 sp1 (Microsoft, 2006)
		case mdac27 = "mdac27"
		/// Microsoft Data Access Components 2.8 sp1 (Microsoft, 2005)
		case mdac28 = "mdac28"
		/// Managed DirectX (Microsoft, 2006)
		case mdx = "mdx"
		/// MS Media Foundation (Microsoft, 2011)
		case mf = "mf"
		/// Visual C++ 2010 mfc100 library; part of vcrun2010 (Microsoft, 2010)
		case mfc100 = "mfc100"
		/// Visual C++ 2012 mfc110 library; part of vcrun2012 (Microsoft, 2012)
		case mfc110 = "mfc110"
		/// Visual C++ 2013 mfc120 library; part of vcrun2013 (Microsoft, 2013)
		case mfc120 = "mfc120"
		/// Visual C++ 2015 mfc140 library; part of vcrun2015 (Microsoft, 2015)
		case mfc140 = "mfc140"
		/// MS mfc40 (Microsoft Foundation Classes from win7sp1) (Microsoft, 1999)
		case mfc40 = "mfc40"
		/// Visual C++ 6 SP4 mfc42 library; part of vcrun6 (Microsoft, 2000)
		case mfc42 = "mfc42"
		/// Visual Studio (.NET) 2002 mfc70 library (Microsoft, 2006)
		case mfc70 = "mfc70"
		/// Visual C++ 2003 mfc71 library; part of vcrun2003 (Microsoft, 2003)
		case mfc71 = "mfc71"
		/// Visual C++ 2005 mfc80 library; part of vcrun2005 (Microsoft, 2011)
		case mfc80 = "mfc80"
		/// Visual C++ 2008 mfc90 library; part of vcrun2008 (Microsoft, 2011)
		case mfc90 = "mfc90"
		/// MS Active Accessibility (oleacc.dll, oleaccrc.dll, msaatext.dll) (Microsoft, 2003)
		case msaa = "msaa"
		/// MS ACM32 (Microsoft, 2003)
		case msacm32 = "msacm32"
		/// MS ASN1 (Microsoft, 2003)
		case msasn1 = "msasn1"
		/// MS Text Service Module (Microsoft, 2003)
		case msctf = "msctf"
		/// MSDelta differential compression library (Microsoft, 2011)
		case msdelta = "msdelta"
		/// MS Windows Media Player 2 ActiveX control for VB6 (Microsoft, 1999)
		case msdxmocx = "msdxmocx"
		/// MS FlexGrid Control (msflxgrd.ocx) (Microsoft, 2012)
		case msflxgrd = "msflxgrd"
		/// Microsoft RichEdit Control (Microsoft, 2011)
		case msftedit = "msftedit"
		/// MS Hierarchical FlexGrid Control (mshflxgd.ocx) (Microsoft, 2012)
		case mshflxgd = "mshflxgd"
		/// MS Line Services (Microsoft, 2001)
		case msls31 = "msls31"
		/// MS Masked Edit Control (Microsoft, 2009)
		case msmask = "msmask"
		/// MS mspatcha (Microsoft, 2004)
		case mspatcha = "mspatcha"
		/// MS Windows Script Control (Microsoft, 2004)
		case msscript = "msscript"
		/// Visual C++ 6 SP4 msvcirt library; part of vcrun6 (Microsoft, 2000)
		case msvcirt = "msvcirt"
		/// MS Visual C++ Runtime Library Version 4.0 (Microsoft, 2011)
		case msvcrt40 = "msvcrt40"
		/// MS XML Core Services 3.0 (Microsoft, 2005)
		case msxml3 = "msxml3"
		/// MS XML Core Services 4.0 (Microsoft, 2009)
		case msxml4 = "msxml4"
		/// MS XML Core Services 6.0 sp2 (Microsoft, 2014)
		case msxml6 = "msxml6"
		/// NuGet Package manager (Outercurve Foundation, 2013)
		case nuget = "nuget"
		/// OpenCodecs 0.85: FLAC, Speex, Theora, Vorbis, WebM (Xiph.Org Foundation, 2011)
		case ogg = "ogg"
		/// MS ole32 Module (ole32.dll) (Microsoft, 2004)
		case ole32 = "ole32"
		/// MS oleaut32.dll (Microsoft, 2011)
		case oleaut32 = "oleaut32"
		/// OpenAL Runtime (Creative, 2023)
		case openal = "openal"
		/// Otvdm - A modified version of winevdm as Win16 emulator (otya128, 2024)
		case otvdm = "otvdm"
		/// Otvdm - A modified version of winevdm as Win16 emulator (otya128, 2024)
		case otvdm090 = "otvdm090"
		/// MS pdh.dll (Performance Data Helper) (Microsoft, 2011)
		case pdh = "pdh"
		/// MS pdh.dll (Performance Data Helper); WinNT 4.0 Version (Microsoft, 1997)
		case pdhNt4 = "pdh_nt4"
		/// MS peverify (from .NET 2.0 SDK) (Microsoft, 2006)
		case peverify = "peverify"
		/// PhysX (Nvidia, 2021)
		case physx = "physx"
		/// pngfilt.dll (from winxp) (Microsoft, 2004)
		case pngfilt = "pngfilt"
		/// PowerShell Wrapper For Wine (ProjectSynchro, 2024)
		case powershell = "powershell"
		/// PowerShell Core (Microsoft, 2024)
		case powershellCore = "powershell_core"
		/// prntvpt.dll (Microsoft, 2011)
		case prntvpt = "prntvpt"
		/// Python interpreter 2.6.2 (Python Software Foundaton, 2009)
		case python26 = "python26"
		/// Python interpreter 2.7.16 (Python Software Foundaton, 2019)
		case python27 = "python27"
		/// qasf.dll (Microsoft, 2011)
		case qasf = "qasf"
		/// qcap.dll (Microsoft, 2011)
		case qcap = "qcap"
		/// qdvd.dll (Microsoft, 2011)
		case qdvd = "qdvd"
		/// qedit.dll (Microsoft, 2011)
		case qedit = "qedit"
		/// quartz.dll (Microsoft, 2011)
		case quartz = "quartz"
		/// quartz.dll (February 2010) (Microsoft, 2010)
		case quartzFeb2010 = "quartz_feb2010"
		/// Apple QuickTime 7.2 (Apple, 2010)
		case quicktime72 = "quicktime72"
		/// Apple QuickTime 7.6 (Apple, 2010)
		case quicktime76 = "quicktime76"
		/// MS RichEdit Control 2.0 (riched20.dll) (Microsoft, 2004)
		case riched20 = "riched20"
		/// MS RichEdit Control 3.0 (riched20.dll, msls31.dll) (Microsoft, 2001)
		case riched30 = "riched30"
		/// MS Rich TextBox Control 6.0 (Microsoft, 2012)
		case richtx32 = "richtx32"
		/// MS Speech API (Microsoft, 2011)
		case sapi = "sapi"
		/// Simple DirectMedia Layer (Sam Lantinga, 2012)
		case sdl = "sdl"
		/// MS Security Support Provider Interface (Microsoft, 2011)
		case secur32 = "secur32"
		/// MS Setup API (Microsoft, 2004)
		case setupapi = "setupapi"
		/// Shockwave (Adobe, 2018)
		case shockwave = "shockwave"
		/// MS Speech SDK 5.1 (Microsoft, 2009)
		case speechsdk = "speechsdk"
		/// Microsoft Tabbed Dialog Control 6.0 (tabctl32.ocx) (Microsoft, 2012)
		case tabctl32 = "tabctl32"
		/// Visual C++ 2019 library (ucrtbase.dll) (Microsoft, 2019)
		case ucrtbase2019 = "ucrtbase2019"
		/// Windows UIRibbon (Microsoft, 2011)
		case uiribbon = "uiribbon"
		/// Windows Update Service API (Microsoft, 2004)
		case updspapi = "updspapi"
		/// MS urlmon (Microsoft, 2011)
		case urlmon = "urlmon"
		/// Uniscribe (Microsoft, 2011)
		case usp10 = "usp10"
		/// MS Visual Basic 2 runtime (Microsoft, 1993)
		case vb2run = "vb2run"
		/// MS Visual Basic 3 runtime (Microsoft, 1998)
		case vb3run = "vb3run"
		/// MS Visual Basic 4 runtime (Microsoft, 1998)
		case vb4run = "vb4run"
		/// MS Visual Basic 5 runtime (Microsoft, 2001)
		case vb5run = "vb5run"
		/// MS Visual Basic 6 runtime sp6 (Microsoft, 2004)
		case vb6run = "vb6run"
		/// Visual C++ 2003 libraries (mfc71,msvcp71,msvcr71) (Microsoft, 2003)
		case vcrun2003 = "vcrun2003"
		/// Visual C++ 2005 libraries (mfc80,msvcp80,msvcr80) (Microsoft, 2011)
		case vcrun2005 = "vcrun2005"
		/// Visual C++ 2008 libraries (mfc90,msvcp90,msvcr90) (Microsoft, 2011)
		case vcrun2008 = "vcrun2008"
		/// Visual C++ 2010 libraries (mfc100,msvcp100,msvcr100) (Microsoft, 2010)
		case vcrun2010 = "vcrun2010"
		/// Visual C++ 2012 libraries (atl110,mfc110,mfc110u,msvcp110,msvcr110,vcomp110) (Microsoft, 2012)
		case vcrun2012 = "vcrun2012"
		/// Visual C++ 2013 libraries (mfc120,mfc120u,msvcp120,msvcr120,vcomp120) (Microsoft, 2013)
		case vcrun2013 = "vcrun2013"
		/// Visual C++ 2015 libraries (concrt140.dll,mfc140.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_atomic_wait.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll) (Microsoft, 2015)
		case vcrun2015 = "vcrun2015"
		/// Visual C++ 2017 libraries (concrt140.dll,mfc140.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_2.dll,msvcp140_atomic_wait.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll) (Microsoft, 2017)
		case vcrun2017 = "vcrun2017"
		/// Visual C++ 2015-2019 libraries (concrt140.dll,mfc140.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_2.dll,msvcp140_atomic_wait.dll,msvcp140_codecvt_ids.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll (Microsoft, 2019)
		case vcrun2019 = "vcrun2019"
		/// Visual C++ 2015-2022 libraries (concrt140.dll,mfc140.dll,mfc140chs.dll,mfc140cht.dll,mfc140deu.dll,mfc140enu.dll,mfc140esn.dll,mfc140fra.dll,mfc140ita.dll,mfc140jpn.dll,mfc140kor.dll,mfc140rus.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_2.dll,msvcp140_atomic_wait.dll,msvcp140_codecvt_ids.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll) (Microsoft, 2022)
		case vcrun2022 = "vcrun2022"
		/// Visual C++ 6 SP4 libraries (mfc42, msvcp60, msvcirt) (Microsoft, 2000)
		case vcrun6 = "vcrun6"
		/// Visual C++ 6 SP6 libraries (with fixes in ATL and MFC) (Microsoft, 2004)
		case vcrun6sp6 = "vcrun6sp6"
		/// MS Visual J# 2.0 SE libraries (requires dotnet20) (Microsoft, 2007)
		case vjrun20 = "vjrun20"
		/// Vulkan-based D3D12 implementation for Linux / Wine (latest) (Hans-Kristian Arntzen , 2020)
		case vkd3d = "vkd3d"
		/// MS Windows Web I/O (Microsoft, 2011)
		case webio = "webio"
		/// MS Windows Imaging Component (Microsoft, 2006)
		case windowscodecs = "windowscodecs"
		/// MS Windows HTTP Services (Microsoft, 2005)
		case winhttp = "winhttp"
		/// MS Windows Internet API (Microsoft, 2011)
		case wininet = "wininet"
		/// MS Windows Internet API (Microsoft, 2008)
		case wininetWin2k = "wininet_win2k"
		/// Windows Management Instrumentation (aka WBEM) Core 1.5 (Microsoft, 2000)
		case wmi = "wmi"
		/// Windows Media Player 10 (Microsoft, 2006)
		case wmp10 = "wmp10"
		/// Windows Media Player 11 (Microsoft, 2007)
		case wmp11 = "wmp11"
		/// Windows Media Player 9 (Microsoft, 2003)
		case wmp9 = "wmp9"
		/// MS Windows Media Video 9 Video Compression Manager (Microsoft, 2013)
		case wmv9vcm = "wmv9vcm"
		/// MS Windows Script Host 5.7 (Microsoft, 2007)
		case wsh57 = "wsh57"
		/// MS XACT Engine (32-bit only) (Microsoft, 2010)
		case xact = "xact"
		/// MS XACT Engine (64-bit only) (Microsoft, 2010)
		case xactX64 = "xact_x64"
		/// MS XAudio Redistributable 2.9 (Microsoft, 2023)
		case xaudio29 = "xaudio29"
		/// Microsoft XInput (Xbox controller support) (Microsoft, 2010)
		case xinput = "xinput"
		/// MS xmllite dll (Microsoft, 2011)
		case xmllite = "xmllite"
		/// MS XNA Framework Redistributable 3.1 (Microsoft, 2009)
		case xna31 = "xna31"
		/// MS XNA Framework Redistributable 4.0 (Microsoft, 2010)
		case xna40 = "xna40"
		/// Xvid Video Codec (xvid.org, 2019)
		case xvid = "xvid"

		// MARK: - CustomStringConvertible

		public var description: String {
			switch self {
			case .allcodecs:
				return "All codecs (dirac, ffdshow, icodecs, cinepak, l3codecx, xvid) except wmp (various, 1995-2009)"
			case .amstream:
				return "MS amstream.dll (Microsoft, 2011)"
			case .art2k7min:
				return "MS Access 2007 runtime (Microsoft, 2007)"
			case .art2kmin:
				return "MS Access 2000 runtime (Microsoft, 2000)"
			case .atmlib:
				return "Adobe Type Manager (Adobe, 2009)"
			case .avifil32:
				return "MS avifil32 (Microsoft, 2004)"
			case .binkw32:
				return "RAD Game Tools binkw32.dll (RAD Game Tools, Inc., 2000)"
			case .cabinet:
				return "Microsoft cabinet.dll (Microsoft, 2002)"
			case .cinepak:
				return "Cinepak Codec (Radius, 1995)"
			case .cmd:
				return "MS cmd.exe (Microsoft, 2004)"
			case .cncDdraw:
				return "Reimplentation of ddraw for CnC games (CnCNet, 2021)"
			case .comctl32:
				return "MS common controls 5.80 (Microsoft, 2001)"
			case .comctl32ocx:
				return "MS comctl32.ocx and mscomctl.ocx, comctl32 wrappers for VB6 (Microsoft, 2012)"
			case .comdlg32ocx:
				return "Common Dialog ActiveX Control for VB6 (Microsoft, 2012)"
			case .crypt32:
				return "MS crypt32 (Microsoft, 2011)"
			case .crypt32Winxp:
				return "MS crypt32 (Microsoft, 2004)"
			case .d2gl:
				return "Diablo 2 LoD Glide to OpenGL Wrapper (Bayaraa, 2023)"
			case .d3dcompiler42:
				return "MS d3dcompiler_42.dll (Microsoft, 2010)"
			case .d3dcompiler43:
				return "MS d3dcompiler_43.dll (Microsoft, 2010)"
			case .d3dcompiler46:
				return "MS d3dcompiler_46.dll (Microsoft, 2010)"
			case .d3dcompiler47:
				return "MS d3dcompiler_47.dll (Microsoft, FIXME)"
			case .d3drm:
				return "MS d3drm.dll (Microsoft, 2010)"
			case .d3dx10:
				return "MS d3dx10_??.dll from DirectX user redistributable (Microsoft, 2010)"
			case .d3dx1043:
				return "MS d3dx10_43.dll (Microsoft, 2010)"
			case .d3dx1142:
				return "MS d3dx11_42.dll (Microsoft, 2010)"
			case .d3dx1143:
				return "MS d3dx11_43.dll (Microsoft, 2010)"
			case .d3dx9:
				return "MS d3dx9_??.dll from DirectX 9 redistributable (Microsoft, 2010)"
			case .d3dx924:
				return "MS d3dx9_24.dll (Microsoft, 2010)"
			case .d3dx925:
				return "MS d3dx9_25.dll (Microsoft, 2010)"
			case .d3dx926:
				return "MS d3dx9_26.dll (Microsoft, 2010)"
			case .d3dx927:
				return "MS d3dx9_27.dll (Microsoft, 2010)"
			case .d3dx928:
				return "MS d3dx9_28.dll (Microsoft, 2010)"
			case .d3dx929:
				return "MS d3dx9_29.dll (Microsoft, 2010)"
			case .d3dx930:
				return "MS d3dx9_30.dll (Microsoft, 2010)"
			case .d3dx931:
				return "MS d3dx9_31.dll (Microsoft, 2010)"
			case .d3dx932:
				return "MS d3dx9_32.dll (Microsoft, 2010)"
			case .d3dx933:
				return "MS d3dx9_33.dll (Microsoft, 2010)"
			case .d3dx934:
				return "MS d3dx9_34.dll (Microsoft, 2010)"
			case .d3dx935:
				return "MS d3dx9_35.dll (Microsoft, 2010)"
			case .d3dx936:
				return "MS d3dx9_36.dll (Microsoft, 2010)"
			case .d3dx937:
				return "MS d3dx9_37.dll (Microsoft, 2010)"
			case .d3dx938:
				return "MS d3dx9_38.dll (Microsoft, 2010)"
			case .d3dx939:
				return "MS d3dx9_39.dll (Microsoft, 2010)"
			case .d3dx940:
				return "MS d3dx9_40.dll (Microsoft, 2010)"
			case .d3dx941:
				return "MS d3dx9_41.dll (Microsoft, 2010)"
			case .d3dx942:
				return "MS d3dx9_42.dll (Microsoft, 2010)"
			case .d3dx943:
				return "MS d3dx9_43.dll (Microsoft, 2010)"
			case .d3dxof:
				return "MS d3dxof.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dbghelp:
				return "MS dbghelp (Microsoft, 2008)"
			case .devenum:
				return "MS devenum.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dinput:
				return "MS dinput.dll; breaks mouse, use only on Rayman 2 etc. (Microsoft, 2010)"
			case .dinput8:
				return "MS DirectInput 8 from DirectX user redistributable (Microsoft, 2010)"
			case .dirac:
				return "The Dirac directshow filter v1.0.2 (Dirac, 2009)"
			case .directmusic:
				return "MS DirectMusic from DirectX user redistributable (Microsoft, 2010)"
			case .directplay:
				return "MS DirectPlay from DirectX user redistributable (Microsoft, 2010)"
			case .directshow:
				return "DirectShow runtime DLLs (amstream, qasf, qcap, qdvd, qedit, quartz) (Microsoft, 2011)"
			case .directx9:
				return "MS DirectX 9 (Deprecated, no-op) (Microsoft, 2010)"
			case .dmband:
				return "MS dmband.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmcompos:
				return "MS dmcompos.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmime:
				return "MS dmime.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmloader:
				return "MS dmloader.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmscript:
				return "MS dmscript.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmstyle:
				return "MS dmstyle.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmsynth:
				return "MS dmsynth.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmusic:
				return "MS dmusic.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dmusic32:
				return "MS dmusic32.dll from DirectX user redistributable (Microsoft, 2006)"
			case .dotnet11:
				return "MS .NET 1.1 (Microsoft, 2003)"
			case .dotnet11sp1:
				return "MS .NET 1.1 SP1 (Microsoft, 2004)"
			case .dotnet20:
				return "MS .NET 2.0 (Microsoft, 2006)"
			case .dotnet20sp1:
				return "MS .NET 2.0 SP1 (Microsoft, 2008)"
			case .dotnet20sp2:
				return "MS .NET 2.0 SP2 (Microsoft, 2009)"
			case .dotnet30:
				return "MS .NET 3.0 (Microsoft, 2006)"
			case .dotnet30sp1:
				return "MS .NET 3.0 SP1 (Microsoft, 2007)"
			case .dotnet35:
				return "MS .NET 3.5 (Microsoft, 2007)"
			case .dotnet35sp1:
				return "MS .NET 3.5 SP1 (Microsoft, 2008)"
			case .dotnet40:
				return "MS .NET 4.0 (Microsoft, 2011)"
			case .dotnet40Kb2468871:
				return "MS .NET 4.0 KB2468871 (Microsoft, 2011)"
			case .dotnet45:
				return "MS .NET 4.5 (Microsoft, 2012)"
			case .dotnet452:
				return "MS .NET 4.5.2 (Microsoft, 2012)"
			case .dotnet46:
				return "MS .NET 4.6 (Microsoft, 2015)"
			case .dotnet461:
				return "MS .NET 4.6.1 (Microsoft, 2015)"
			case .dotnet462:
				return "MS .NET 4.6.2 (Microsoft, 2016)"
			case .dotnet471:
				return "MS .NET 4.7.1 (Microsoft, 2017)"
			case .dotnet472:
				return "MS .NET 4.7.2 (Microsoft, 2018)"
			case .dotnet48:
				return "MS .NET 4.8 (Microsoft, 2019)"
			case .dotnet6:
				return "MS .NET Runtime 6.0 LTS (Microsoft, 2023)"
			case .dotnet7:
				return "MS .NET Runtime 7.0 LTS (Microsoft, 2023)"
			case .dotnet8:
				return "MS .NET Runtime 8.0 LTS (Microsoft, 2024)"
			case .dotnet9:
				return "MS .NET Runtime 9.0 LTS (Microsoft, 2024)"
			case .dotnetVerifier:
				return "MS .NET Verifier (Microsoft, 2016)"
			case .dotnetcore2:
				return "MS .NET Core Runtime 2.1 LTS (Microsoft, 2020)"
			case .dotnetcore3:
				return "MS .NET Core Runtime 3.1 LTS (Microsoft, 2020)"
			case .dotnetcoredesktop3:
				return "MS .NET Core Desktop Runtime 3.1 LTS (Microsoft, 2020)"
			case .dotnetdesktop6:
				return "MS .NET Desktop Runtime 6.0 LTS (Microsoft, 2023)"
			case .dotnetdesktop7:
				return "MS .NET Desktop Runtime 7.0 LTS (Microsoft, 2023)"
			case .dotnetdesktop8:
				return "MS .NET Desktop Runtime 8.0 LTS (Microsoft, 2024)"
			case .dotnetdesktop9:
				return "MS .NET Desktop Runtime 9.0 LTS (Microsoft, 2024)"
			case .dpvoice:
				return "Microsoft dpvoice dpvvox dpvacm Audio dlls (Microsoft, 2002)"
			case .dsdmo:
				return "MS dsdmo.dll (Microsoft, 2010)"
			case .dsound:
				return "MS DirectSound from DirectX user redistributable (Microsoft, 2010)"
			case .dswave:
				return "MS dswave.dll from DirectX user redistributable (Microsoft, 2010)"
			case .dx8vb:
				return "MS dx8vb.dll from DirectX 8.1 runtime (Microsoft, 2001)"
			case .dxdiag:
				return "DirectX Diagnostic Tool (Microsoft, 2010)"
			case .dxdiagn:
				return "DirectX Diagnostic Library (Microsoft, 2011)"
			case .dxdiagnFeb2010:
				return "DirectX Diagnostic Library (February 2010) (Microsoft, 2010)"
			case .dxtrans:
				return "MS dxtrans.dll (Microsoft, 2002)"
			case .dxvk:
				return "Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (latest) (Philip Rebohle, 2024)"
			case .dxvk1000:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0) (Philip Rebohle, 2017)"
			case .dxvk1001:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0.1) (Philip Rebohle, 2017)"
			case .dxvk1002:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0.2) (Philip Rebohle, 2017)"
			case .dxvk1003:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.0.3) (Philip Rebohle, 2017)"
			case .dxvk1011:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.1.1) (Philip Rebohle, 2017)"
			case .dxvk1020:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2) (Philip Rebohle, 2017)"
			case .dxvk1021:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2.1) (Philip Rebohle, 2017)"
			case .dxvk1022:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2.2) (Philip Rebohle, 2017)"
			case .dxvk1023:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.2.3) (Philip Rebohle, 2017)"
			case .dxvk1030:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3) (Philip Rebohle, 2017)"
			case .dxvk1031:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.1) (Philip Rebohle, 2017)"
			case .dxvk1032:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.2) (Philip Rebohle, 2017)"
			case .dxvk1033:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.3) (Philip Rebohle, 2017)"
			case .dxvk1034:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.3.4) (Philip Rebohle, 2017)"
			case .dxvk1040:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4) (Philip Rebohle, 2017)"
			case .dxvk1041:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.1) (Philip Rebohle, 2017)"
			case .dxvk1042:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.2) (Philip Rebohle, 2017)"
			case .dxvk1043:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.3) (Philip Rebohle, 2017)"
			case .dxvk1044:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.4) (Philip Rebohle, 2017)"
			case .dxvk1045:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.5) (Philip Rebohle, 2017)"
			case .dxvk1046:
				return "Vulkan-based D3D10/D3D11 implementation for Linux / Wine (1.4.6) (Philip Rebohle, 2017)"
			case .dxvk1050:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5) (Philip Rebohle, 2017)"
			case .dxvk1051:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.1) (Philip Rebohle, 2017)"
			case .dxvk1052:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.2) (Philip Rebohle, 2017)"
			case .dxvk1053:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.3) (Philip Rebohle, 2017)"
			case .dxvk1054:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.4) (Philip Rebohle, 2017)"
			case .dxvk1055:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.5.5) (Philip Rebohle, 2017)"
			case .dxvk1060:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.6) (Philip Rebohle, 2017)"
			case .dxvk1061:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.6.1) (Philip Rebohle, 2017)"
			case .dxvk1070:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7) (Philip Rebohle, 2017)"
			case .dxvk1071:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7.1) (Philip Rebohle, 2017)"
			case .dxvk1072:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7.2) (Philip Rebohle, 2017)"
			case .dxvk1073:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.7.3) (Philip Rebohle, 2017)"
			case .dxvk1080:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.8) (Philip Rebohle, 2017)"
			case .dxvk1081:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.8.1) (Philip Rebohle, 2017)"
			case .dxvk1090:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9) (Philip Rebohle, 2017)"
			case .dxvk1091:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.1) (Philip Rebohle, 2017)"
			case .dxvk1092:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.2) (Philip Rebohle, 2017)"
			case .dxvk1093:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.3) (Philip Rebohle, 2017)"
			case .dxvk1094:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.9.4) (Philip Rebohle, 2017)"
			case .dxvk1100:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10) (Philip Rebohle, 2017)"
			case .dxvk1101:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10.1) (Philip Rebohle, 2017)"
			case .dxvk1102:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10.2) (Philip Rebohle, 2017)"
			case .dxvk1103:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (1.10.3) (Philip Rebohle, 2022)"
			case .dxvk2000:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.0) (Philip Rebohle, 2022)"
			case .dxvk2010:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.1) (Philip Rebohle, 2023)"
			case .dxvk2020:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.2) (Philip Rebohle, 2023)"
			case .dxvk2030:
				return "Vulkan-based D3D9/D3D10/D3D11 implementation for Linux / Wine (2.3) (Philip Rebohle, 2023)"
			case .dxvk2040:
				return "Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.4) (Philip Rebohle, 2024)"
			case .dxvk2041:
				return "Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.4.1) (Philip Rebohle, 2024)"
			case .dxvk2050:
				return "Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.5) (Philip Rebohle, 2024)"
			case .dxvk2051:
				return "Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.5.1) (Philip Rebohle, 2024)"
			case .dxvk2052:
				return "Vulkan-based D3D8/D3D9/D3D10/D3D11 implementation for Linux / Wine (2.5.2) (Philip Rebohle, 2024)"
			case .dxvkNvapi0061:
				return "Alternative NVAPI Vulkan implementation on top of DXVK for Linux / Wine (0.6.1) (Jens Peters, 2023)"
			case .esent:
				return "MS Extensible Storage Engine (Microsoft, 2011)"
			case .faudio:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (20.07) (Kron4ek, 2019)"
			case .faudio1901:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.01) (Kron4ek, 2019)"
			case .faudio1902:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.02) (Kron4ek, 2019)"
			case .faudio1903:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.03) (Kron4ek, 2019)"
			case .faudio1904:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.04) (Kron4ek, 2019)"
			case .faudio1905:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.05) (Kron4ek, 2019)"
			case .faudio1906:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.06) (Kron4ek, 2019)"
			case .faudio190607:
				return "FAudio (xaudio reimplementation, with xna support) builds for win32 (19.06.07) (Kron4ek, 2019)"
			case .ffdshow:
				return "ffdshow video codecs (doom9 folks, 2010)"
			case .filever:
				return "Microsoft's filever, for dumping file version info (Microsoft, 20??)"
			case .galliumnine:
				return "Gallium Nine Standalone (latest) (Gallium Nine Team, 2023)"
			case .galliumnine02:
				return "Gallium Nine Standalone (v0.2) (Gallium Nine Team, 2019)"
			case .galliumnine03:
				return "Gallium Nine Standalone (v0.3) (Gallium Nine Team, 2019)"
			case .galliumnine04:
				return "Gallium Nine Standalone (v0.4) (Gallium Nine Team, 2019)"
			case .galliumnine05:
				return "Gallium Nine Standalone (v0.5) (Gallium Nine Team, 2019)"
			case .galliumnine06:
				return "Gallium Nine Standalone (v0.6) (Gallium Nine Team, 2020)"
			case .galliumnine07:
				return "Gallium Nine Standalone (v0.7) (Gallium Nine Team, 2020)"
			case .galliumnine08:
				return "Gallium Nine Standalone (v0.8) (Gallium Nine Team, 2021)"
			case .galliumnine09:
				return "Gallium Nine Standalone (v0.9) (Gallium Nine Team, 2023)"
			case .gdiplus:
				return "MS GDI+ (Microsoft, 2011)"
			case .gdiplusWinxp:
				return "MS GDI+ (Microsoft, 2009)"
			case .gfw:
				return "MS Games For Windows Live (xlive.dll) (Microsoft, 2008)"
			case .glidewrapper:
				return "GlideWrapper (Rolf Neuberger, 2005)"
			case .glut:
				return "The glut utility library for OpenGL (Mark J. Kilgard, 2001)"
			case .gmdls:
				return "General MIDI DLS Collection (Microsoft / Roland, 1999)"
			case .hid:
				return "MS hid (Microsoft, 2003)"
			case .icodecs:
				return "Indeo codecs (Intel, 1998)"
			case .ie6:
				return "Internet Explorer 6 (Microsoft, 2002)"
			case .ie7:
				return "Internet Explorer 7 (Microsoft, 2008)"
			case .ie8:
				return "Internet Explorer 8 (Microsoft, 2009)"
			case .ie8Kb2936068:
				return "Cumulative Security Update for Internet Explorer 8 (Microsoft, 2014)"
			case .ie8Tls12:
				return "TLS 1.1 and 1.2 for Internet Explorer 8 (Microsoft, 2017)"
			case .iertutil:
				return "MS Runtime Utility (Microsoft, 2011)"
			case .itircl:
				return "MS itircl.dll (Microsoft, 1999)"
			case .itss:
				return "MS itss.dll (Microsoft, 1999)"
			case .jet40:
				return "MS Jet 4.0 Service Pack 8 (Microsoft, 2003)"
			case .l3codecx:
				return "MPEG Layer-3 Audio Codec for Microsoft DirectShow (Microsoft, 2010)"
			case .lavfilters:
				return "LAV Filters (Hendrik Leppkes, 2019)"
			case .lavfilters702:
				return "LAV Filters 0.70.2 (Hendrik Leppkes, 2017)"
			case .mdac27:
				return "Microsoft Data Access Components 2.7 sp1 (Microsoft, 2006)"
			case .mdac28:
				return "Microsoft Data Access Components 2.8 sp1 (Microsoft, 2005)"
			case .mdx:
				return "Managed DirectX (Microsoft, 2006)"
			case .mf:
				return "MS Media Foundation (Microsoft, 2011)"
			case .mfc100:
				return "Visual C++ 2010 mfc100 library; part of vcrun2010 (Microsoft, 2010)"
			case .mfc110:
				return "Visual C++ 2012 mfc110 library; part of vcrun2012 (Microsoft, 2012)"
			case .mfc120:
				return "Visual C++ 2013 mfc120 library; part of vcrun2013 (Microsoft, 2013)"
			case .mfc140:
				return "Visual C++ 2015 mfc140 library; part of vcrun2015 (Microsoft, 2015)"
			case .mfc40:
				return "MS mfc40 (Microsoft Foundation Classes from win7sp1) (Microsoft, 1999)"
			case .mfc42:
				return "Visual C++ 6 SP4 mfc42 library; part of vcrun6 (Microsoft, 2000)"
			case .mfc70:
				return "Visual Studio (.NET) 2002 mfc70 library (Microsoft, 2006)"
			case .mfc71:
				return "Visual C++ 2003 mfc71 library; part of vcrun2003 (Microsoft, 2003)"
			case .mfc80:
				return "Visual C++ 2005 mfc80 library; part of vcrun2005 (Microsoft, 2011)"
			case .mfc90:
				return "Visual C++ 2008 mfc90 library; part of vcrun2008 (Microsoft, 2011)"
			case .msaa:
				return "MS Active Accessibility (oleacc.dll, oleaccrc.dll, msaatext.dll) (Microsoft, 2003)"
			case .msacm32:
				return "MS ACM32 (Microsoft, 2003)"
			case .msasn1:
				return "MS ASN1 (Microsoft, 2003)"
			case .msctf:
				return "MS Text Service Module (Microsoft, 2003)"
			case .msdelta:
				return "MSDelta differential compression library (Microsoft, 2011)"
			case .msdxmocx:
				return "MS Windows Media Player 2 ActiveX control for VB6 (Microsoft, 1999)"
			case .msflxgrd:
				return "MS FlexGrid Control (msflxgrd.ocx) (Microsoft, 2012)"
			case .msftedit:
				return "Microsoft RichEdit Control (Microsoft, 2011)"
			case .mshflxgd:
				return "MS Hierarchical FlexGrid Control (mshflxgd.ocx) (Microsoft, 2012)"
			case .msls31:
				return "MS Line Services (Microsoft, 2001)"
			case .msmask:
				return "MS Masked Edit Control (Microsoft, 2009)"
			case .mspatcha:
				return "MS mspatcha (Microsoft, 2004)"
			case .msscript:
				return "MS Windows Script Control (Microsoft, 2004)"
			case .msvcirt:
				return "Visual C++ 6 SP4 msvcirt library; part of vcrun6 (Microsoft, 2000)"
			case .msvcrt40:
				return "MS Visual C++ Runtime Library Version 4.0 (Microsoft, 2011)"
			case .msxml3:
				return "MS XML Core Services 3.0 (Microsoft, 2005)"
			case .msxml4:
				return "MS XML Core Services 4.0 (Microsoft, 2009)"
			case .msxml6:
				return "MS XML Core Services 6.0 sp2 (Microsoft, 2014)"
			case .nuget:
				return "NuGet Package manager (Outercurve Foundation, 2013)"
			case .ogg:
				return "OpenCodecs 0.85: FLAC, Speex, Theora, Vorbis, WebM (Xiph.Org Foundation, 2011)"
			case .ole32:
				return "MS ole32 Module (ole32.dll) (Microsoft, 2004)"
			case .oleaut32:
				return "MS oleaut32.dll (Microsoft, 2011)"
			case .openal:
				return "OpenAL Runtime (Creative, 2023)"
			case .otvdm:
				return "Otvdm - A modified version of winevdm as Win16 emulator (otya128, 2024)"
			case .otvdm090:
				return "Otvdm - A modified version of winevdm as Win16 emulator (otya128, 2024)"
			case .pdh:
				return "MS pdh.dll (Performance Data Helper) (Microsoft, 2011)"
			case .pdhNt4:
				return "MS pdh.dll (Performance Data Helper); WinNT 4.0 Version (Microsoft, 1997)"
			case .peverify:
				return "MS peverify (from .NET 2.0 SDK) (Microsoft, 2006)"
			case .physx:
				return "PhysX (Nvidia, 2021)"
			case .pngfilt:
				return "pngfilt.dll (from winxp) (Microsoft, 2004)"
			case .powershell:
				return "PowerShell Wrapper For Wine (ProjectSynchro, 2024)"
			case .powershellCore:
				return "PowerShell Core (Microsoft, 2024)"
			case .prntvpt:
				return "prntvpt.dll (Microsoft, 2011)"
			case .python26:
				return "Python interpreter 2.6.2 (Python Software Foundaton, 2009)"
			case .python27:
				return "Python interpreter 2.7.16 (Python Software Foundaton, 2019)"
			case .qasf:
				return "qasf.dll (Microsoft, 2011)"
			case .qcap:
				return "qcap.dll (Microsoft, 2011)"
			case .qdvd:
				return "qdvd.dll (Microsoft, 2011)"
			case .qedit:
				return "qedit.dll (Microsoft, 2011)"
			case .quartz:
				return "quartz.dll (Microsoft, 2011)"
			case .quartzFeb2010:
				return "quartz.dll (February 2010) (Microsoft, 2010)"
			case .quicktime72:
				return "Apple QuickTime 7.2 (Apple, 2010)"
			case .quicktime76:
				return "Apple QuickTime 7.6 (Apple, 2010)"
			case .riched20:
				return "MS RichEdit Control 2.0 (riched20.dll) (Microsoft, 2004)"
			case .riched30:
				return "MS RichEdit Control 3.0 (riched20.dll, msls31.dll) (Microsoft, 2001)"
			case .richtx32:
				return "MS Rich TextBox Control 6.0 (Microsoft, 2012)"
			case .sapi:
				return "MS Speech API (Microsoft, 2011)"
			case .sdl:
				return "Simple DirectMedia Layer (Sam Lantinga, 2012)"
			case .secur32:
				return "MS Security Support Provider Interface (Microsoft, 2011)"
			case .setupapi:
				return "MS Setup API (Microsoft, 2004)"
			case .shockwave:
				return "Shockwave (Adobe, 2018)"
			case .speechsdk:
				return "MS Speech SDK 5.1 (Microsoft, 2009)"
			case .tabctl32:
				return "Microsoft Tabbed Dialog Control 6.0 (tabctl32.ocx) (Microsoft, 2012)"
			case .ucrtbase2019:
				return "Visual C++ 2019 library (ucrtbase.dll) (Microsoft, 2019)"
			case .uiribbon:
				return "Windows UIRibbon (Microsoft, 2011)"
			case .updspapi:
				return "Windows Update Service API (Microsoft, 2004)"
			case .urlmon:
				return "MS urlmon (Microsoft, 2011)"
			case .usp10:
				return "Uniscribe (Microsoft, 2011)"
			case .vb2run:
				return "MS Visual Basic 2 runtime (Microsoft, 1993)"
			case .vb3run:
				return "MS Visual Basic 3 runtime (Microsoft, 1998)"
			case .vb4run:
				return "MS Visual Basic 4 runtime (Microsoft, 1998)"
			case .vb5run:
				return "MS Visual Basic 5 runtime (Microsoft, 2001)"
			case .vb6run:
				return "MS Visual Basic 6 runtime sp6 (Microsoft, 2004)"
			case .vcrun2003:
				return "Visual C++ 2003 libraries (mfc71,msvcp71,msvcr71) (Microsoft, 2003)"
			case .vcrun2005:
				return "Visual C++ 2005 libraries (mfc80,msvcp80,msvcr80) (Microsoft, 2011)"
			case .vcrun2008:
				return "Visual C++ 2008 libraries (mfc90,msvcp90,msvcr90) (Microsoft, 2011)"
			case .vcrun2010:
				return "Visual C++ 2010 libraries (mfc100,msvcp100,msvcr100) (Microsoft, 2010)"
			case .vcrun2012:
				return "Visual C++ 2012 libraries (atl110,mfc110,mfc110u,msvcp110,msvcr110,vcomp110) (Microsoft, 2012)"
			case .vcrun2013:
				return "Visual C++ 2013 libraries (mfc120,mfc120u,msvcp120,msvcr120,vcomp120) (Microsoft, 2013)"
			case .vcrun2015:
				return "Visual C++ 2015 libraries (concrt140.dll,mfc140.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_atomic_wait.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll) (Microsoft, 2015)"
			case .vcrun2017:
				return "Visual C++ 2017 libraries (concrt140.dll,mfc140.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_2.dll,msvcp140_atomic_wait.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll) (Microsoft, 2017)"
			case .vcrun2019:
				return "Visual C++ 2015-2019 libraries (concrt140.dll,mfc140.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_2.dll,msvcp140_atomic_wait.dll,msvcp140_codecvt_ids.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll (Microsoft, 2019)"
			case .vcrun2022:
				return "Visual C++ 2015-2022 libraries (concrt140.dll,mfc140.dll,mfc140chs.dll,mfc140cht.dll,mfc140deu.dll,mfc140enu.dll,mfc140esn.dll,mfc140fra.dll,mfc140ita.dll,mfc140jpn.dll,mfc140kor.dll,mfc140rus.dll,mfc140u.dll,mfcm140.dll,mfcm140u.dll,msvcp140.dll,msvcp140_1.dll,msvcp140_2.dll,msvcp140_atomic_wait.dll,msvcp140_codecvt_ids.dll,vcamp140.dll,vccorlib140.dll,vcomp140.dll,vcruntime140.dll,vcruntime140_1.dll) (Microsoft, 2022)"
			case .vcrun6:
				return "Visual C++ 6 SP4 libraries (mfc42, msvcp60, msvcirt) (Microsoft, 2000)"
			case .vcrun6sp6:
				return "Visual C++ 6 SP6 libraries (with fixes in ATL and MFC) (Microsoft, 2004)"
			case .vjrun20:
				return "MS Visual J# 2.0 SE libraries (requires dotnet20) (Microsoft, 2007)"
			case .vkd3d:
				return "Vulkan-based D3D12 implementation for Linux / Wine (latest) (Hans-Kristian Arntzen , 2020)"
			case .webio:
				return "MS Windows Web I/O (Microsoft, 2011)"
			case .windowscodecs:
				return "MS Windows Imaging Component (Microsoft, 2006)"
			case .winhttp:
				return "MS Windows HTTP Services (Microsoft, 2005)"
			case .wininet:
				return "MS Windows Internet API (Microsoft, 2011)"
			case .wininetWin2k:
				return "MS Windows Internet API (Microsoft, 2008)"
			case .wmi:
				return "Windows Management Instrumentation (aka WBEM) Core 1.5 (Microsoft, 2000)"
			case .wmp10:
				return "Windows Media Player 10 (Microsoft, 2006)"
			case .wmp11:
				return "Windows Media Player 11 (Microsoft, 2007)"
			case .wmp9:
				return "Windows Media Player 9 (Microsoft, 2003)"
			case .wmv9vcm:
				return "MS Windows Media Video 9 Video Compression Manager (Microsoft, 2013)"
			case .wsh57:
				return "MS Windows Script Host 5.7 (Microsoft, 2007)"
			case .xact:
				return "MS XACT Engine (32-bit only) (Microsoft, 2010)"
			case .xactX64:
				return "MS XACT Engine (64-bit only) (Microsoft, 2010)"
			case .xaudio29:
				return "MS XAudio Redistributable 2.9 (Microsoft, 2023)"
			case .xinput:
				return "Microsoft XInput (Xbox controller support) (Microsoft, 2010)"
			case .xmllite:
				return "MS xmllite dll (Microsoft, 2011)"
			case .xna31:
				return "MS XNA Framework Redistributable 3.1 (Microsoft, 2009)"
			case .xna40:
				return "MS XNA Framework Redistributable 4.0 (Microsoft, 2010)"
			case .xvid:
				return "Xvid Video Codec (xvid.org, 2019)"
			}
		}
	}
}
//
// Verbs+Font.swift
// WineKit
// 
// Source: https://github.com/Winetricks/winetricks
//
// Automatically generated on 1.3.2025.
//

import Foundation

extension Winetricks {
	/// Winetricks verbs from Font.txt
	public enum Font: String, Hashable, Equatable, Codable, CaseIterable, CustomStringConvertible, Sendable {
		/// All fonts (various, 1998-2010)
		case allfonts = "allfonts"
		/// MS Andale Mono font (Microsoft, 2008)
		case andale = "andale"
		/// MS Arial / Arial Black fonts (Microsoft, 2008)
		case arial = "arial"
		/// Baekmuk Korean fonts (Wooderart Inc. / kldp.net, 1999)
		case baekmuk = "baekmuk"
		/// MS Calibri font (Microsoft, 2007)
		case calibri = "calibri"
		/// MS Cambria font (Microsoft, 2009)
		case cambria = "cambria"
		/// MS Candara font (Microsoft, 2009)
		case candara = "candara"
		/// All Chinese, Japanese, Korean fonts and aliases (Various, )
		case cjkfonts = "cjkfonts"
		/// MS Comic Sans fonts (Microsoft, 2008)
		case comicsans = "comicsans"
		/// MS Consolas console font (Microsoft, 2011)
		case consolas = "consolas"
		/// MS Constantia font (Microsoft, 2009)
		case constantia = "constantia"
		/// MS Corbel font (Microsoft, 2009)
		case corbel = "corbel"
		/// MS Arial, Courier, Times fonts (Microsoft, 2008)
		case corefonts = "corefonts"
		/// MS Courier fonts (Microsoft, 2008)
		case courier = "courier"
		/// Droid fonts (Ascender Corporation, 2009)
		case droid = "droid"
		/// Updated fonts for Romanian and Bulgarian (Microsoft, 2008)
		case eufonts = "eufonts"
		/// Creates aliases for Chinese fonts using Source Han Sans fonts (Adobe, 2019)
		case fakechinese = "fakechinese"
		/// Creates aliases for Japanese fonts using Source Han Sans fonts (Adobe, 2019)
		case fakejapanese = "fakejapanese"
		/// Creates aliases for Japanese fonts using IPAMona fonts (Jun Kobayashi, 2008)
		case fakejapaneseIpamona = "fakejapanese_ipamona"
		/// Creates aliases for Japanese Meiryo fonts using VLGothic fonts (Project Vine / Daisuke Suzuki, 2014)
		case fakejapaneseVlgothic = "fakejapanese_vlgothic"
		/// Creates aliases for Korean fonts using Source Han Sans fonts (Adobe, 2019)
		case fakekorean = "fakekorean"
		/// MS Georgia fonts (Microsoft, 2008)
		case georgia = "georgia"
		/// MS Impact fonts (Microsoft, 2008)
		case impact = "impact"
		/// IPAMona Japanese fonts (Jun Kobayashi, 2008)
		case ipamona = "ipamona"
		/// Red Hat Liberation fonts (Mono, Sans, SansNarrow, Serif) (Red Hat, 2008)
		case liberation = "liberation"
		/// MS Lucida Console font (Microsoft, 1998)
		case lucida = "lucida"
		/// MS Meiryo font (Microsoft, 2009)
		case meiryo = "meiryo"
		/// MS Sans Serif font (Microsoft, 2004)
		case micross = "micross"
		/// OpenSymbol fonts (replacement for Wingdings) (libreoffice.org, 2022)
		case opensymbol = "opensymbol"
		/// All MS PowerPoint Viewer fonts (various, )
		case pptfonts = "pptfonts"
		/// Source Han Sans fonts (Adobe, 2021)
		case sourcehansans = "sourcehansans"
		/// MS Tahoma font (not part of corefonts) (Microsoft, 1999)
		case tahoma = "tahoma"
		/// Takao Japanese fonts (Jun Kobayashi, 2010)
		case takao = "takao"
		/// MS Times fonts (Microsoft, 2008)
		case times = "times"
		/// MS Trebuchet fonts (Microsoft, 2008)
		case trebuchet = "trebuchet"
		/// Ubuntu Font Family (Ubuntu, 2010)
		case uff = "uff"
		/// Unifont alternative to Arial Unicode MS (Roman Czyborra / GNU, 2021)
		case unifont = "unifont"
		/// MS Verdana fonts (Microsoft, 2008)
		case verdana = "verdana"
		/// VLGothic Japanese fonts (Project Vine / Daisuke Suzuki, 2014)
		case vlgothic = "vlgothic"
		/// MS Webdings fonts (Microsoft, 2008)
		case webdings = "webdings"
		/// WenQuanYi CJK font (wenq.org, 2009)
		case wenquanyi = "wenquanyi"
		/// WenQuanYi ZenHei font (wenq.org, 2009)
		case wenquanyizenhei = "wenquanyizenhei"

		// MARK: - CustomStringConvertible

		public var description: String {
			switch self {
			case .allfonts:
				return "All fonts (various, 1998-2010)"
			case .andale:
				return "MS Andale Mono font (Microsoft, 2008)"
			case .arial:
				return "MS Arial / Arial Black fonts (Microsoft, 2008)"
			case .baekmuk:
				return "Baekmuk Korean fonts (Wooderart Inc. / kldp.net, 1999)"
			case .calibri:
				return "MS Calibri font (Microsoft, 2007)"
			case .cambria:
				return "MS Cambria font (Microsoft, 2009)"
			case .candara:
				return "MS Candara font (Microsoft, 2009)"
			case .cjkfonts:
				return "All Chinese, Japanese, Korean fonts and aliases (Various, )"
			case .comicsans:
				return "MS Comic Sans fonts (Microsoft, 2008)"
			case .consolas:
				return "MS Consolas console font (Microsoft, 2011)"
			case .constantia:
				return "MS Constantia font (Microsoft, 2009)"
			case .corbel:
				return "MS Corbel font (Microsoft, 2009)"
			case .corefonts:
				return "MS Arial, Courier, Times fonts (Microsoft, 2008)"
			case .courier:
				return "MS Courier fonts (Microsoft, 2008)"
			case .droid:
				return "Droid fonts (Ascender Corporation, 2009)"
			case .eufonts:
				return "Updated fonts for Romanian and Bulgarian (Microsoft, 2008)"
			case .fakechinese:
				return "Creates aliases for Chinese fonts using Source Han Sans fonts (Adobe, 2019)"
			case .fakejapanese:
				return "Creates aliases for Japanese fonts using Source Han Sans fonts (Adobe, 2019)"
			case .fakejapaneseIpamona:
				return "Creates aliases for Japanese fonts using IPAMona fonts (Jun Kobayashi, 2008)"
			case .fakejapaneseVlgothic:
				return "Creates aliases for Japanese Meiryo fonts using VLGothic fonts (Project Vine / Daisuke Suzuki, 2014)"
			case .fakekorean:
				return "Creates aliases for Korean fonts using Source Han Sans fonts (Adobe, 2019)"
			case .georgia:
				return "MS Georgia fonts (Microsoft, 2008)"
			case .impact:
				return "MS Impact fonts (Microsoft, 2008)"
			case .ipamona:
				return "IPAMona Japanese fonts (Jun Kobayashi, 2008)"
			case .liberation:
				return "Red Hat Liberation fonts (Mono, Sans, SansNarrow, Serif) (Red Hat, 2008)"
			case .lucida:
				return "MS Lucida Console font (Microsoft, 1998)"
			case .meiryo:
				return "MS Meiryo font (Microsoft, 2009)"
			case .micross:
				return "MS Sans Serif font (Microsoft, 2004)"
			case .opensymbol:
				return "OpenSymbol fonts (replacement for Wingdings) (libreoffice.org, 2022)"
			case .pptfonts:
				return "All MS PowerPoint Viewer fonts (various, )"
			case .sourcehansans:
				return "Source Han Sans fonts (Adobe, 2021)"
			case .tahoma:
				return "MS Tahoma font (not part of corefonts) (Microsoft, 1999)"
			case .takao:
				return "Takao Japanese fonts (Jun Kobayashi, 2010)"
			case .times:
				return "MS Times fonts (Microsoft, 2008)"
			case .trebuchet:
				return "MS Trebuchet fonts (Microsoft, 2008)"
			case .uff:
				return "Ubuntu Font Family (Ubuntu, 2010)"
			case .unifont:
				return "Unifont alternative to Arial Unicode MS (Roman Czyborra / GNU, 2021)"
			case .verdana:
				return "MS Verdana fonts (Microsoft, 2008)"
			case .vlgothic:
				return "VLGothic Japanese fonts (Project Vine / Daisuke Suzuki, 2014)"
			case .webdings:
				return "MS Webdings fonts (Microsoft, 2008)"
			case .wenquanyi:
				return "WenQuanYi CJK font (wenq.org, 2009)"
			case .wenquanyizenhei:
				return "WenQuanYi ZenHei font (wenq.org, 2009)"
			}
		}
	}
}
//
// Verbs+Setting.swift
// WineKit
// 
// Source: https://github.com/Winetricks/winetricks
//
// Automatically generated on 1.3.2025.
//

import Foundation

extension Winetricks {
	/// Winetricks verbs from Setting.txt
	public enum Setting: String, Hashable, Equatable, Codable, CaseIterable, CustomStringConvertible, Sendable {
		/// Override most common DLLs to builtin
		case alldllsBuiltin = "alldlls=builtin"
		/// Remove all DLL overrides
		case alldllsDefault = "alldlls=default"
		/// Prevent winedbg from launching when an unhandled exception occurs
		case autostartWinedbgDisabled = "autostart_winedbg=disabled"
		/// Automatically launch winedbg when an unhandled exception occurs (default)
		case autostartWinedbgEnabled = "autostart_winedbg=enabled"
		/// Fake verb that always returns false
		case bad = "bad"
		/// Disable CheckFloatConstants (default)
		case cfcDisabled = "cfc=disabled"
		/// Enable CheckFloatConstants
		case cfcEnabled = "cfc=enabled"
		/// Enable and force serialisation of OpenGL or Vulkan commands between multiple command streams in the same application
		case csmtForce = "csmt=force"
		/// Disable Command Stream Multithreading
		case csmtOff = "csmt=off"
		/// Enable Command Stream Multithreading (default)
		case csmtOn = "csmt=on"
		/// Check for broken fonts
		case fontfix = "fontfix"
		/// Enable subpixel font smoothing for BGR LCDs
		case fontsmoothBgr = "fontsmooth=bgr"
		/// Disable font smoothing
		case fontsmoothDisable = "fontsmooth=disable"
		/// Enable subpixel font smoothing
		case fontsmoothGray = "fontsmooth=gray"
		/// Enable subpixel font smoothing for RGB LCDs
		case fontsmoothRgb = "fontsmooth=rgb"
		/// Force using Mono instead of .NET (for debugging)
		case forcemono = "forcemono"
		/// Fake verb that always returns true
		case good = "good"
		/// Disable cursor clipping for full-screen windows (default)
		case grabfullscreenN = "grabfullscreen=n"
		/// Force cursor clipping for full-screen windows (needed by some games)
		case grabfullscreenY = "grabfullscreen=y"
		/// Set graphics driver to default
		case graphicsDefault = "graphics=default"
		/// Set graphics driver to Quartz (for macOS)
		case graphicsMac = "graphics=mac"
		/// Set graphics driver to Wayland
		case graphicsWayland = "graphics=wayland"
		/// Set graphics driver to X11
		case graphicsX11 = "graphics=x11"
		/// Set MaxShaderModelGS to 0
		case gsm0 = "gsm=0"
		/// Set MaxShaderModelGS to 1
		case gsm1 = "gsm=1"
		/// Set MaxShaderModelGS to 2
		case gsm2 = "gsm=2"
		/// Set MaxShaderModelGS to 3
		case gsm3 = "gsm=3"
		/// Enable heap checking with GlobalFlag
		case heapcheck = "heapcheck"
		/// Disable hiding Wine exports from applications (wine-staging)
		case hidewineexportsDisable = "hidewineexports=disable"
		/// Enable hiding Wine exports from applications (wine-staging)
		case hidewineexportsEnable = "hidewineexports=enable"
		/// Add empty C:\windows\system32\driverstc\{hosts,services} files
		case hosts = "hosts"
		/// Remove wineprefix links to /home/austin
		case isolateHome = "isolate_home"
		/// Enable mapping opt->alt and cmd->ctrl keys for the Mac native driver
		case mackeyremapBoth = "mackeyremap=both"
		/// Enable mapping of left opt->alt and cmd->ctrl keys for the Mac native driver
		case mackeyremapLeft = "mackeyremap=left"
		/// Do not remap keys for the Mac native driver (default)
		case mackeyremapNone = "mackeyremap=none"
		/// Disable exporting MIME-type file associations to the native desktop
		case mimeassocOff = "mimeassoc=off"
		/// Enable exporting MIME-type file associations to the native desktop (default)
		case mimeassocOn = "mimeassoc=on"
		/// Set DirectInput MouseWarpOverride to disable
		case mwoDisable = "mwo=disable"
		/// Set DirectInput MouseWarpOverride to enabled (default)
		case mwoEnabled = "mwo=enabled"
		/// Set DirectInput MouseWarpOverride to force (needed by some games)
		case mwoForce = "mwo=force"
		/// Override odbc32, odbccp32 and oledb32
		case nativeMdac = "native_mdac"
		/// Override oleaut32
		case nativeOleaut32 = "native_oleaut32"
		/// Disable crash dialog
		case nocrashdialog = "nocrashdialog"
		/// Set NonPower2Mode to repack
		case npmRepack = "npm=repack"
		/// Set Windows version to Windows NT 3.51
		case nt351 = "nt351"
		/// Set Windows version to Windows NT 4.0
		case nt40 = "nt40"
		/// Set OffscreenRenderingMode=backbuffer
		case ormBackbuffer = "orm=backbuffer"
		/// Set OffscreenRenderingMode=fbo (default)
		case ormFbo = "orm=fbo"
		/// Set MaxShaderModelPS to 0
		case psm0 = "psm=0"
		/// Set MaxShaderModelPS to 1
		case psm1 = "psm=1"
		/// Set MaxShaderModelPS to 2
		case psm2 = "psm=2"
		/// Set MaxShaderModelPS to 3
		case psm3 = "psm=3"
		/// Remove builtin wine-mono
		case removeMono = "remove_mono"
		/// Set renderer to gdi
		case rendererGdi = "renderer=gdi"
		/// Set renderer to gl
		case rendererGl = "renderer=gl"
		/// Set renderer to no3d
		case rendererNo3d = "renderer=no3d"
		/// Set renderer to vulkan
		case rendererVulkan = "renderer=vulkan"
		/// Set RenderTargetLockMode to auto (default)
		case rtlmAuto = "rtlm=auto"
		/// Set RenderTargetLockMode to disabled
		case rtlmDisabled = "rtlm=disabled"
		/// Set RenderTargetLockMode to readdraw
		case rtlmReaddraw = "rtlm=readdraw"
		/// Set RenderTargetLockMode to readtex
		case rtlmReadtex = "rtlm=readtex"
		/// Set RenderTargetLockMode to texdraw
		case rtlmTexdraw = "rtlm=texdraw"
		/// Set RenderTargetLockMode to textex
		case rtlmTextex = "rtlm=textex"
		/// Sandbox the wineprefix - remove links to /home/austin
		case sandbox = "sandbox"
		/// Set MIDImap device to the value specified in the MIDI_DEVICE environment variable
		case setMididevice = "set_mididevice"
		/// set user PATH variable in wine prefix specified by native and/or wine paths in WINEPATH environment variable with ';' as path separator
		case setUserpath = "set_userpath"
		/// Set shader_backend to arb
		case shaderBackendArb = "shader_backend=arb"
		/// Set shader_backend to glsl
		case shaderBackendGlsl = "shader_backend=glsl"
		/// Set shader_backend to none
		case shaderBackendNone = "shader_backend=none"
		/// Set sound driver to ALSA
		case soundAlsa = "sound=alsa"
		/// Set sound driver to Mac CoreAudio
		case soundCoreaudio = "sound=coreaudio"
		/// Set sound driver to disabled
		case soundDisabled = "sound=disabled"
		/// Set sound driver to OSS
		case soundOss = "sound=oss"
		/// Set sound driver to PulseAudio
		case soundPulse = "sound=pulse"
		/// Disable Struct Shader Math (default)
		case ssmDisabled = "ssm=disabled"
		/// Enable Struct Shader Math
		case ssmEnabled = "ssm=enabled"
		/// Disable UseTakeFocus (default)
		case usetakefocusN = "usetakefocus=n"
		/// Enable UseTakeFocus
		case usetakefocusY = "usetakefocus=y"
		/// Enable virtual desktop, set size to 1024x768
		case vd1024x768 = "vd=1024x768"
		/// Enable virtual desktop, set size to 1280x1024
		case vd1280x1024 = "vd=1280x1024"
		/// Enable virtual desktop, set size to 1440x900
		case vd1440x900 = "vd=1440x900"
		/// Enable virtual desktop, set size to 640x480
		case vd640x480 = "vd=640x480"
		/// Enable virtual desktop, set size to 800x600
		case vd800x600 = "vd=800x600"
		/// Disable virtual desktop
		case vdOff = "vd=off"
		/// Tell Wine your video card has 1024MB RAM
		case videomemorysize1024 = "videomemorysize=1024"
		/// Tell Wine your video card has 2048MB RAM
		case videomemorysize2048 = "videomemorysize=2048"
		/// Tell Wine your video card has 512MB RAM
		case videomemorysize512 = "videomemorysize=512"
		/// Let Wine detect amount of video card memory
		case videomemorysizeDefault = "videomemorysize=default"
		/// Set Windows version to Windows Vista
		case vista = "vista"
		/// Set MaxShaderModelVS to 0
		case vsm0 = "vsm=0"
		/// Set MaxShaderModelVS to 1
		case vsm1 = "vsm=1"
		/// Set MaxShaderModelVS to 2
		case vsm2 = "vsm=2"
		/// Set MaxShaderModelVS to 3
		case vsm3 = "vsm=3"
		/// Set Windows version to Windows 10
		case win10 = "win10"
		/// Set Windows version to Windows 11
		case win11 = "win11"
		/// Set Windows version to Windows 2.0
		case win20 = "win20"
		/// Set Windows version to Windows 2000
		case win2k = "win2k"
		/// Set Windows version to Windows 2003
		case win2k3 = "win2k3"
		/// Set Windows version to Windows 2008
		case win2k8 = "win2k8"
		/// Set Windows version to Windows 2008 R2
		case win2k8r2 = "win2k8r2"
		/// Set Windows version to Windows 3.0
		case win30 = "win30"
		/// Set Windows version to Windows 3.1
		case win31 = "win31"
		/// Set Windows version to Windows 7
		case win7 = "win7"
		/// Set Windows version to Windows 8
		case win8 = "win8"
		/// Set Windows version to Windows 8.1
		case win81 = "win81"
		/// Set Windows version to Windows 95
		case win95 = "win95"
		/// Set Windows version to Windows 98
		case win98 = "win98"
		/// Prevent the window manager from decorating windows
		case windowmanagerdecoratedN = "windowmanagerdecorated=n"
		/// Allow the window manager to decorate windows (default)
		case windowmanagerdecoratedY = "windowmanagerdecorated=y"
		/// Prevent the window manager from controlling windows
		case windowmanagermanagedN = "windowmanagermanaged=n"
		/// Allow the window manager to control windows (default)
		case windowmanagermanagedY = "windowmanagermanaged=y"
		/// Set Windows version to Windows ME
		case winme = "winme"
		/// Set Windows version to default (win7)
		case winver = "winver="
		/// Set Windows version to Windows XP
		case winxp = "winxp"

		// MARK: - CustomStringConvertible

		public var description: String {
			switch self {
			case .alldllsBuiltin:
				return "Override most common DLLs to builtin"
			case .alldllsDefault:
				return "Remove all DLL overrides"
			case .autostartWinedbgDisabled:
				return "Prevent winedbg from launching when an unhandled exception occurs"
			case .autostartWinedbgEnabled:
				return "Automatically launch winedbg when an unhandled exception occurs (default)"
			case .bad:
				return "Fake verb that always returns false"
			case .cfcDisabled:
				return "Disable CheckFloatConstants (default)"
			case .cfcEnabled:
				return "Enable CheckFloatConstants"
			case .csmtForce:
				return "Enable and force serialisation of OpenGL or Vulkan commands between multiple command streams in the same application"
			case .csmtOff:
				return "Disable Command Stream Multithreading"
			case .csmtOn:
				return "Enable Command Stream Multithreading (default)"
			case .fontfix:
				return "Check for broken fonts"
			case .fontsmoothBgr:
				return "Enable subpixel font smoothing for BGR LCDs"
			case .fontsmoothDisable:
				return "Disable font smoothing"
			case .fontsmoothGray:
				return "Enable subpixel font smoothing"
			case .fontsmoothRgb:
				return "Enable subpixel font smoothing for RGB LCDs"
			case .forcemono:
				return "Force using Mono instead of .NET (for debugging)"
			case .good:
				return "Fake verb that always returns true"
			case .grabfullscreenN:
				return "Disable cursor clipping for full-screen windows (default)"
			case .grabfullscreenY:
				return "Force cursor clipping for full-screen windows (needed by some games)"
			case .graphicsDefault:
				return "Set graphics driver to default"
			case .graphicsMac:
				return "Set graphics driver to Quartz (for macOS)"
			case .graphicsWayland:
				return "Set graphics driver to Wayland"
			case .graphicsX11:
				return "Set graphics driver to X11"
			case .gsm0:
				return "Set MaxShaderModelGS to 0"
			case .gsm1:
				return "Set MaxShaderModelGS to 1"
			case .gsm2:
				return "Set MaxShaderModelGS to 2"
			case .gsm3:
				return "Set MaxShaderModelGS to 3"
			case .heapcheck:
				return "Enable heap checking with GlobalFlag"
			case .hidewineexportsDisable:
				return "Disable hiding Wine exports from applications (wine-staging)"
			case .hidewineexportsEnable:
				return "Enable hiding Wine exports from applications (wine-staging)"
			case .hosts:
				return "Add empty C:\\windows\\system32\\driverstc\\{hosts,services} files"
			case .isolateHome:
				return "Remove wineprefix links to /home/austin"
			case .mackeyremapBoth:
				return "Enable mapping opt->alt and cmd->ctrl keys for the Mac native driver"
			case .mackeyremapLeft:
				return "Enable mapping of left opt->alt and cmd->ctrl keys for the Mac native driver"
			case .mackeyremapNone:
				return "Do not remap keys for the Mac native driver (default)"
			case .mimeassocOff:
				return "Disable exporting MIME-type file associations to the native desktop"
			case .mimeassocOn:
				return "Enable exporting MIME-type file associations to the native desktop (default)"
			case .mwoDisable:
				return "Set DirectInput MouseWarpOverride to disable"
			case .mwoEnabled:
				return "Set DirectInput MouseWarpOverride to enabled (default)"
			case .mwoForce:
				return "Set DirectInput MouseWarpOverride to force (needed by some games)"
			case .nativeMdac:
				return "Override odbc32, odbccp32 and oledb32"
			case .nativeOleaut32:
				return "Override oleaut32"
			case .nocrashdialog:
				return "Disable crash dialog"
			case .npmRepack:
				return "Set NonPower2Mode to repack"
			case .nt351:
				return "Set Windows version to Windows NT 3.51"
			case .nt40:
				return "Set Windows version to Windows NT 4.0"
			case .ormBackbuffer:
				return "Set OffscreenRenderingMode=backbuffer"
			case .ormFbo:
				return "Set OffscreenRenderingMode=fbo (default)"
			case .psm0:
				return "Set MaxShaderModelPS to 0"
			case .psm1:
				return "Set MaxShaderModelPS to 1"
			case .psm2:
				return "Set MaxShaderModelPS to 2"
			case .psm3:
				return "Set MaxShaderModelPS to 3"
			case .removeMono:
				return "Remove builtin wine-mono"
			case .rendererGdi:
				return "Set renderer to gdi"
			case .rendererGl:
				return "Set renderer to gl"
			case .rendererNo3d:
				return "Set renderer to no3d"
			case .rendererVulkan:
				return "Set renderer to vulkan"
			case .rtlmAuto:
				return "Set RenderTargetLockMode to auto (default)"
			case .rtlmDisabled:
				return "Set RenderTargetLockMode to disabled"
			case .rtlmReaddraw:
				return "Set RenderTargetLockMode to readdraw"
			case .rtlmReadtex:
				return "Set RenderTargetLockMode to readtex"
			case .rtlmTexdraw:
				return "Set RenderTargetLockMode to texdraw"
			case .rtlmTextex:
				return "Set RenderTargetLockMode to textex"
			case .sandbox:
				return "Sandbox the wineprefix - remove links to /home/austin"
			case .setMididevice:
				return "Set MIDImap device to the value specified in the MIDI_DEVICE environment variable"
			case .setUserpath:
				return "set user PATH variable in wine prefix specified by native and/or wine paths in WINEPATH environment variable with ';' as path separator"
			case .shaderBackendArb:
				return "Set shader_backend to arb"
			case .shaderBackendGlsl:
				return "Set shader_backend to glsl"
			case .shaderBackendNone:
				return "Set shader_backend to none"
			case .soundAlsa:
				return "Set sound driver to ALSA"
			case .soundCoreaudio:
				return "Set sound driver to Mac CoreAudio"
			case .soundDisabled:
				return "Set sound driver to disabled"
			case .soundOss:
				return "Set sound driver to OSS"
			case .soundPulse:
				return "Set sound driver to PulseAudio"
			case .ssmDisabled:
				return "Disable Struct Shader Math (default)"
			case .ssmEnabled:
				return "Enable Struct Shader Math"
			case .usetakefocusN:
				return "Disable UseTakeFocus (default)"
			case .usetakefocusY:
				return "Enable UseTakeFocus"
			case .vd1024x768:
				return "Enable virtual desktop, set size to 1024x768"
			case .vd1280x1024:
				return "Enable virtual desktop, set size to 1280x1024"
			case .vd1440x900:
				return "Enable virtual desktop, set size to 1440x900"
			case .vd640x480:
				return "Enable virtual desktop, set size to 640x480"
			case .vd800x600:
				return "Enable virtual desktop, set size to 800x600"
			case .vdOff:
				return "Disable virtual desktop"
			case .videomemorysize1024:
				return "Tell Wine your video card has 1024MB RAM"
			case .videomemorysize2048:
				return "Tell Wine your video card has 2048MB RAM"
			case .videomemorysize512:
				return "Tell Wine your video card has 512MB RAM"
			case .videomemorysizeDefault:
				return "Let Wine detect amount of video card memory"
			case .vista:
				return "Set Windows version to Windows Vista"
			case .vsm0:
				return "Set MaxShaderModelVS to 0"
			case .vsm1:
				return "Set MaxShaderModelVS to 1"
			case .vsm2:
				return "Set MaxShaderModelVS to 2"
			case .vsm3:
				return "Set MaxShaderModelVS to 3"
			case .win10:
				return "Set Windows version to Windows 10"
			case .win11:
				return "Set Windows version to Windows 11"
			case .win20:
				return "Set Windows version to Windows 2.0"
			case .win2k:
				return "Set Windows version to Windows 2000"
			case .win2k3:
				return "Set Windows version to Windows 2003"
			case .win2k8:
				return "Set Windows version to Windows 2008"
			case .win2k8r2:
				return "Set Windows version to Windows 2008 R2"
			case .win30:
				return "Set Windows version to Windows 3.0"
			case .win31:
				return "Set Windows version to Windows 3.1"
			case .win7:
				return "Set Windows version to Windows 7"
			case .win8:
				return "Set Windows version to Windows 8"
			case .win81:
				return "Set Windows version to Windows 8.1"
			case .win95:
				return "Set Windows version to Windows 95"
			case .win98:
				return "Set Windows version to Windows 98"
			case .windowmanagerdecoratedN:
				return "Prevent the window manager from decorating windows"
			case .windowmanagerdecoratedY:
				return "Allow the window manager to decorate windows (default)"
			case .windowmanagermanagedN:
				return "Prevent the window manager from controlling windows"
			case .windowmanagermanagedY:
				return "Allow the window manager to control windows (default)"
			case .winme:
				return "Set Windows version to Windows ME"
			case .winver:
				return "Set Windows version to default (win7)"
			case .winxp:
				return "Set Windows version to Windows XP"
			}
		}
	}
}
