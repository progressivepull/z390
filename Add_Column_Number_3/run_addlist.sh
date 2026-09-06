#!/usr/bin/env bash
echo "====================================="
echo "z390 ADDLIST START"
echo "====================================="
Z390="C:\\Program Files (x86)\\Automated Software Tools\\z390"
PROJECT="C:\\z390\\work\\Add_Column_Number_3\\ADDLIST"

echo
echo ">>> ASSEMBLE"
cmd.exe //c "$Z390\\ASM.BAT" "$PROJECT"
ASM_RC=$?
if [ $ASM_RC -ne 0 ]; then
    echo "ERROR: Assembly failed (RC=$ASM_RC)"
    exit $ASM_RC
fi

echo
echo ">>> LINK"
cmd.exe //c "$Z390\\LINK.BAT" "$PROJECT"
LINK_RC=$?
if [ $LINK_RC -ne 0 ]; then
    echo "ERROR: Link failed (RC=$LINK_RC)"
    exit $LINK_RC
fi

echo
echo ">>> EXECUTE"
cmd.exe //c "$Z390\\EXEC.BAT" "$PROJECT"
RC=$?

echo
echo "====================================="
echo "ADDLIST COMPLETE"
echo "RETURN CODE = $RC"
echo "====================================="
exit $RC