$CONTAINING_CLASS *copy = [[[self class] allocWithZone: zone] init];

if (copy != nil) 
{
    $CUSTOM_CODE
}

return copy;