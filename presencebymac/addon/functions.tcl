#*******************************************************************************
# Allgemeine Konstanten
#*******************************************************************************

set ADDON_NAME "presencebymac"
set DEBUG 0

#*******************************************************************************
# Logmeldungen
#*******************************************************************************

proc log { message } {
        global ADDON_NAME

        exec logger "$ADDON_NAME - $message"
}

#*******************************************************************************
# Dateizugriff
#*******************************************************************************

proc loadFile { fileName } {
        set content ""
        set fd -1

        set fd [ open $fileName r]
        if { $fd > -1 } {
                set content [read $fd]
                close $fd
        }

        return $content
}

#*******************************************************************************
# Debug
#*******************************************************************************

proc debug { level message } {
        global DEBUG
        if { $level <= $DEBUG } {
                puts "DEBUG: $message"
        }
}
