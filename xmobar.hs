-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- Modified for Kevin's laptop

Config {
    font                = "xft:Monospace:size=9:bold:antialias=true",
    bgColor		= "#000000",
    fgColor		= "#aaaaaa",
    position		= TopW L 94 --Static { xpos = 0, ypos = 0, width = 1302, height = 16 },
    lowerOnStart	= False,
    hideOnStart         = False,
    allDesktops         = True,
    commands		= [
        Run StdinReader,
        Run DynNetwork ["-t", "<rx>↓<tx>↑","-L","0","-H","500000","--normal","green","--high","red"] 10,
        Run Cpu ["-t","<total>%","-L","35", "-H","85","--low", "green","--normal", "yellow","--high","red"] 10,
        Run ThermalZone 0 ["-t", "<temp>°C","-L", "50", "-H", "80", "--low", "green", "--normal", "yellow", "--high", "red"] 10,
        Run Memory ["-t","M:<usedratio>","-p","2","-L","50","-H","80","-h","red","-l","green","--normal","yellow"] 10,
	Run Battery ["-t","<acstatus>:<left>","--","-O","AC","-o","Bat","-L","15","-H","50","-h","green","-l","red"] 10,
        Run Date "%m-%d %H:%M" "date" 10,
        Run Com  "nordvpn-server" ["&"] "" 300
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %nordvpn-server% / %dynnetwork% / %cpu% @ %thermal0% / %memory% / %battery% / <fc=#ee9a00>%date%</fc> /  "
}
