<$PLAN9/src/mkhdr

TARG=`ls *.[cy] | sed 's/\.[cy]//'`
SHORTLIB=draw bio 9 thread

<$PLAN9/src/mkmany

$O.mc: mc.$O
	$LD -o $target mc.$O -lfs -lmux -lthread -ldraw -lbio -l9 $LDFLAGS

$O.stats: stats.$O
	$LD -o $target stats.$O -lthread -ldraw -lbio -l9 $LDFLAGS
$O.9clock: 9clock.$O
	$LD -o $target 9clock.$O -lthread -ldraw -lbio -l9 $LDFLAGS

LDFLAGS=$LDFLAGS -L$X11/lib -lX11
