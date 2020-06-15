if (other == self)
{
    return YES;
}
if (!other || ![[other class] isEqual:[self class]])
{
    return NO;
}
#if ($CUSTOM_CODE == "")
return YES;#else
return [self $CUSTOM_CODE:other];#end