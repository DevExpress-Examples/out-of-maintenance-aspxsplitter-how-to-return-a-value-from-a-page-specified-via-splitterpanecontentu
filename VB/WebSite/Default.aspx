<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxSplitter - How to return values from the ContentUrl page</title>
	<script type="text/javascript">
		function ShowInfo(returnValue) {
			lb.SetText('Content Page Value: ' + returnValue);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxSplitter ID="ASPxSplitter1" runat="server">
			<Panes>
				<dx:SplitterPane ContentUrl="ContentPage.aspx">
				</dx:SplitterPane>
				<dx:SplitterPane>
					<ContentCollection>
						<dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
							<dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="No data to display" ClientInstanceName="lb">
							</dx:ASPxLabel>
						</dx:SplitterContentControl>
					</ContentCollection>
				</dx:SplitterPane>
			</Panes>
		</dx:ASPxSplitter>
	</div>
	</form>
</body>
</html>