<%@ Page Language="vb" AutoEventWireup="true" CodeFile="ContentPage.aspx.vb" Inherits="ContentPage" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Content Page</title>
	<script type="text/javascript">
		function OnBtnClientClick(s, e) {
			window.parent.ShowInfo(textBox.GetText());
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxTextBox ID="tb" runat="server" Width="170px" ClientInstanceName="textBox">
		</dx:ASPxTextBox>
		<dx:ASPxButton ID="btn" runat="server" AutoPostBack="False" ClientInstanceName="btn"
			Text="GetText">
			<ClientSideEvents Click="OnBtnClientClick" />
		</dx:ASPxButton>
	</div>
	</form>
</body>
</html>