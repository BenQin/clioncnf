#if ($CUSTOM_CODE == "")return [super description];#else
NSMutableString *description = [NSMutableString string];
$CUSTOM_CODE

NSMutableString *superDescription = [[super description] mutableCopy];
NSUInteger length = [superDescription length];

if (length > 0 && [superDescription characterAtIndex:length - 1] == '>') 
{
    [superDescription insertString:@", " atIndex:length - 1];
    [superDescription insertString:description atIndex:length + 1];
    return superDescription;
}
else 
{
    return [NSString stringWithFormat:@"<%@: %@>", NSStringFromClass([self class]), description];
}#end