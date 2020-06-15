$CONTAINING_CLASS *copy = ($CONTAINING_CLASS *)[super copyWithZone: zone];

if (copy != nil) 
{
    $CUSTOM_CODE
}

return copy;