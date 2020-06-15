#if ($IVAR_IS_AVAILABLE == "true")
#if ($SETTER_SEMANTICS == "assign")
$IVAR = $PARAM;#elseif ($SETTER_SEMANTICS == "retain")
if ($IVAR != $PARAM) 
{
  [$PARAM retain];
  [$IVAR release];
  $IVAR = $PARAM;
}#elseif ($SETTER_SEMANTICS == "copy")
if ($IVAR != $PARAM) 
{
  $PARAM = [$PARAM mutableCopy];
  [$IVAR release];
  $IVAR = $PARAM;
}#elseif ($SETTER_SEMANTICS == "copyArc")
$IVAR = [$PARAM mutableCopy];#end#end