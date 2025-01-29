$packs = Get-ChildItem $args[0] | Sort-Object LastWriteTime

foreach ($pack in $packs)
{
  echo $pack.FullName
 .\mabi-pack.exe extract -i $pack.FullName -o $args[1]
}