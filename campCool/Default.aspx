<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="campCool.campCool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script>
    function clearText() {
        document.getElementById("txtEmail").value = "";
    }
</script>
<head>
		<title>campCool</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

    <!-- One -->
					<section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right">
						<div class="content">
							<h1>campCool</h1>
							<p class="major"><!--[-->Portable, solar cooling for your next trek.<!--]--></p>
                            <form id="form1" runat="server">
							<ul class="actions vertical">
                                <li>Join our newsletter for more information on our product when it becomes available.</li>
								<li><asp:TextBox type="email" ID="txtEmail" runat="server" onClick="clearText();" Width="420px" placeholder="me@email.com" AutoPostBack="true"></asp:TextBox></li>
                                <li><asp:Button type="submit" ID="Button1" runat="server" OnClick="Button1_Click" Text="Join Our Newsletter" /></li>
							</ul>
                            </form>
						</div>
						<div class="image">
							<img src="images/banner.jpg" alt="" />
						</div>
					</section>   
</body>
</html>
