<%@ Page language="c#" Codebehind="index.aspx.cs" AutoEventWireup="True" Inherits="board.WebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Welcome to White Board...</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="javascript/wz_jsgraphics.js" type="text/javascript"></script>
		<script src="javascript/constants.js" type="text/javascript"></script>
		<script src="javascript/drawing.js" type="text/javascript"></script>
		<script src="javascript/ajaxobjects.js" type="text/javascript"></script>
		<script src="javascript/ajaxfunctions.js" type="text/javascript"></script>
		<script src="javascript/common.js" type="text/javascript"></script>
		<LINK href="css/common.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="getData();">
		<form id="Form1" method="post" runat="server">
			<script>
			
			</script>
			<FONT face="MS UI Gothic">
				<DIV id="divTools" style="BORDER-RIGHT: black 1px solid; BORDER-TOP: black 1px solid; DISPLAY: inline; Z-INDEX: 102; LEFT: 8px; BORDER-LEFT: black 1px solid; WIDTH: 85px; BORDER-BOTTOM: black 1px solid; POSITION: absolute; TOP: 24px; HEIGHT: 502px"
					ms_positioning="FlowLayout" class="divTools" align="center">
					<P>&nbsp;</P>
					<P><STRONG>TOOLS</STRONG></P>
					<P>
						<TABLE id="tblTools" style="BORDER-RIGHT: black thin; BORDER-TOP: black thin; BORDER-LEFT: black thin; WIDTH: 80px; BORDER-BOTTOM: black thin; HEIGHT: 32px"
							cellSpacing="1" cellPadding="1" width="80" border="1" title="Select some Tool">
							<TR>
								<TD onClick="setTool(CONST_ACTION_TOOL_LINE);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/line.jpg" /></TD>
								<TD onclick="setColor(CONST_COLOR_WHITE);setTool(CONST_ACTION_TOOL_FILLRECT);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/eraser.jpg"></TD>
							</TR>
							<TR>
								<TD onclick="setTool(CONST_ACTION_TOOL_RECT);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/rect.jpg"></TD>
								<TD onclick="setTool(CONST_ACTION_TOOL_FILLRECT);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/fillrect.jpg"></TD>
							</TR>
							<TR>
								<TD onclick="setTool(CONST_ACTION_TOOL_ELLIPSE);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/ellipse.jpg"></TD>
								<TD onclick="setTool(CONST_ACTION_TOOL_FILLELLIPSE);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/fillellipse.jpg"></TD>
							</TR>
							<TR>
								<TD onclick="setTool(CONST_ACTION_TEXT);">&nbsp;<IMG style="CURSOR: hand" alt="" src="images/text.jpg"></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD></TD>
							</TR>
						</TABLE>
					</P>
					<P><STRONG>STROKE</STRONG></P>
					<P>
						<TABLE id="tblStroke" style="WIDTH: 80px; HEIGHT: 96px" cellSpacing="1" cellPadding="1"
							width="80" border="1">
							<TR>
								<TD style="CURSOR: hand" onclick="setStroke(CONST_STROKE_1);" align="center" colSpan="2">1</TD>
							</TR>
							<TR>
								<TD style="CURSOR: hand" onclick="setStroke(CONST_STROKE_2);" align="center" colSpan="2">2</TD>
							</TR>
							<TR>
								<TD style="CURSOR: hand" onclick="setStroke(CONST_STROKE_3);" align="center" colSpan="2">3</TD>
							</TR>
							<TR>
								<TD style="CURSOR: hand" onclick="setStroke(CONST_STROKE_4);" align="center" colSpan="2">4</TD>
							</TR>
							<TR>
								<TD style="CURSOR: hand" onclick="setStroke(CONST_STROKE_5);" align="center" colSpan="2">5</TD>
							</TR>
							<TR>
								<TD align="center" colSpan="2"></TD>
							</TR>
							<TR>
								<TD align="center" colSpan="2">
									<DIV id="divSelectedStroke" style="DISPLAY: inline; WIDTH: 72px; HEIGHT: 16px" ms_positioning="FlowLayout"></DIV>
								</TD>
							</TR>
						</TABLE>
					</P>
					<P>&nbsp;</P>
					<P>&nbsp;</P>
				</DIV>
				<INPUT class="btnCss" id="btnGetData" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 600px"
					type="button" value="Get Server Data" name="Button1" onclick="getDataAgain();">
				<INPUT id="btnClearServer" style="Z-INDEX: 107; LEFT: 128px; POSITION: absolute; TOP: 600px"
					type="button" value="Clear Server Data" name="Button1" class="btnCss" onclick="clearServerData();">
				<DIV id="divColors" style="CLEAR: none; BORDER-RIGHT: black 1px solid; BORDER-TOP: black 1px solid; DISPLAY: inline; Z-INDEX: 103; LEFT: 8px; BORDER-LEFT: black 1px solid; WIDTH: 696px; BORDER-BOTTOM: black 1px solid; POSITION: absolute; TOP: 528px; HEIGHT: 63px"
					ms_positioning="FlowLayout" class="divColors">
					<TABLE id="tblColors" style="WIDTH: 240px; HEIGHT: 45px" cellSpacing="1" cellPadding="1"
						border="1">
						<TR>
							<TD style="WIDTH: 78px" align="center" rowSpan="2">
								<DIV id="divSelectedColor" style="DISPLAY: inline; WIDTH: 20px; HEIGHT: 20px; BACKGROUND-COLOR: black"
									ms_positioning="FlowLayout"></DIV>
							</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_PURPLE);" bgColor="purple">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_GRAY);" bgColor="gray">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_RED);" bgColor="red">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_BLUE);" bgColor="blue">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_YELLOW);" bgColor="yellow">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_AQUA);" bgColor="aqua">&nbsp;</TD>
						</TR>
						<TR>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_BLACK);" bgColor="black">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_MAROON);" bgColor="maroon">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_BROWN);" bgColor="brown">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_GREEN);" bgColor="green">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_ORANGE);" bgColor="orange">&nbsp;</TD>
							<TD style="WIDTH: 20px; CURSOR: hand" onclick="setColor(CONST_COLOR_PINK);" bgColor="pink">&nbsp;</TD>
						</TR>
					</TABLE>
				</DIV>
				<DIV onmouseup="toggleLoading(true);setEnd(event.offsetX, event.offsetY);drawPic();setData();"
					onmousedown="setStart(event.offsetX, event.offsetY);" id="divCanvas" style="BORDER-RIGHT: black 1px solid; BORDER-TOP: black 1px solid; DISPLAY: inline; Z-INDEX: 104; LEFT: 96px; BORDER-LEFT: black 1px solid; WIDTH: 608px; BORDER-BOTTOM: black 1px solid; POSITION: absolute; TOP: 24px; HEIGHT: 502px"
					ms_positioning="FlowLayout"></DIV>
				<DIV id="divLoading" style="DISPLAY: inline; Z-INDEX: 101; LEFT: 8px; VISIBILITY: hidden; WIDTH: 88px; COLOR: white; POSITION: absolute; TOP: 0px; HEIGHT: 24px; BACKGROUND-COLOR: red"
					ms_positioning="FlowLayout">&nbsp;<STRONG><FONT size="4">Loading...</FONT></STRONG></DIV>
				<INPUT id="ReadFrom" style="Z-INDEX: 105; LEFT: 712px; WIDTH: 24px; POSITION: absolute; TOP: 8px; HEIGHT: 22px"
					type="hidden" size="1" value="0"><INPUT id="btnClearLocal" style="Z-INDEX: 106; LEFT: 584px; POSITION: absolute; TOP: 600px"
					type="button" value="Clear Local Data" onclick="if (confirm(CONST_QUESTION_CLEAR_LOCAL))clearCanvas();" class="btnCss">
				<DIV class="divColors" style="DISPLAY: inline; Z-INDEX: 109; LEFT: 8px; WIDTH: 696px; POSITION: absolute; TOP: 632px; HEIGHT: 16px"
					ms_positioning="FlowLayout">
					<UL>
						<LI>
							Select Tool !</LI>
						<LI>
							Select Color !!</LI>
						<LI>
							Draw !!!</LI></UL>
				</DIV>
			</FONT>
		</form>
	</body>
</HTML>
