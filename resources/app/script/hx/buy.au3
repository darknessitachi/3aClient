BlockInput(1)
Global $main = WinGetHandle("���Ϲ�Ʊ����ϵͳ5.0")
WinSetState($main, "", @SW_SHOW)
buy($CmdLine[1], $CmdLine[2], $CmdLine[3])
WinSetState($main, "", @SW_HIDE)
BlockInput(0)

Func buy($code, $price, $num)
   ControlClick($main, "", "[CLASS:SysTreeView32; INSTANCE:1]", "left", 1, 57, 90)
   ;Send("{F6}")
   Sleep(100)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:1]", $code)
   Sleep(1000)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:2]", $price)
   ControlSetText($main, "", "[CLASS:Edit;INSTANCE:3]", $num)
   Sleep(1000)
   ControlClick($main, "", "����[B]")

   Dim $confirm = WinWait("[CLASS:#32770]", "ί��ȷ��");
   Sleep(100)
   ControlClick($confirm, "", "��(&Y)")

   Dim $tip = WinWait("[CLASS:#32770]", "��ʾ");
   Sleep(100)
   Dim $text = WinGetText($tip)
   ControlClick($tip, "", "ȷ��")
   ConsoleWrite($text)
EndFunc