-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- Modified for Kevin's laptop

Config {
    font		= "xft:Monospace:size=9:bold:antialias=true",
    bgColor		= "#000000",
    fgColor		= "#aaaaaa",
    position		= Static { xpos = 0, ypos = 0, width = 1302, height = 16 },
    lowerOnStart	= True,
    commands		= [
        Run Weather "CYXE" ["-t","<tempC>C <skyCondition>","-L","10","-H","30","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","6144","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
	Run DynNetwork ["-t", "<rx>KB*<tx>KB","-L","0","-H","32","--normal","green","--high","red"] 10,
        Run Date "%a %b %_d %Y %H:%M:%S" "date" 10,
        Run Com "getMasterVolume" [] "volumelevel" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %dynnetwork% | %cpu% %memory% %swap% | %CYXE% | <fc=#ee9a00>%date%</fc> | Vol:<fc=#b2b2ff>%volumelevel%</fc> | "
}
