<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="userprofile" runat="server">
    <div id="main_container">
        <div id="header">
            <div id="logo">
                <a href="welcome.aspx">
                    <img src="images/apartmentlogo.png" width="250" height="40" alt="" title="" border="0" /></a>
            </div>
            <div class="menu">
            </div>
        </div>
        <div id="main_content">
            <div class="column1">
                <div class="left_box">
                    <div class="top_left_box">
                    </div>
                    <div class="center_left_box">
                        <div class="box_title">
                            <span>Profile</span>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbluname" runat="server" ForeColor="#000099"></asp:Label>
                            </p>
                        </div>
                    </div>
                    <div class="bottom_left_box">
                    </div>
                </div>
                <div class="left_box">
                    <div class="top_left_box">
                    </div>
                    <div class="center_left_box">
                        <ul style="list-style: none">
                            <li style="margin-bottom: 25px"><a href="notice.aspx" class="watab">Notice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                            </li>
                            <li style="margin-bottom: 25px"><a href="events.aspx" class="watab">Events&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li style="margin-bottom: 25px"><a href="#" class="watab">Documents&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li style="margin-bottom: 25px"><a href="topics.aspx" class="watab">Discussions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                            <li style="margin-bottom: 25px"><a href="dts.aspx" class="watab">Lodge Issues&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                        </ul>
                    </div>
                    <div class="bottom_left_box">
                    </div>
                </div>
                <div class="left_box">
                    <div class="top_left_box">
                    </div>
                    <div class="center_left_box">
                        <div class="box_title">
                            <span>Poll</span></div>
                    </div>
                    <div class="bottom_left_box">
                    </div>
                </div>
            </div>
            <!-- end of column one -->
            <div class="column2">
                <div id="profile_">
                    <table>
                        <tr>
                            <td>
                                <p>
                                    Name:
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:Label ID="lblname" runat="server"></asp:Label>
                                    <asp:TextBox ID="txtname" runat="server" Visible="False"></asp:TextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    House Number:
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:Label ID="lblhousenumber" runat="server"></asp:Label></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    Email-Id:
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:Label ID="lblemail" runat="server"></asp:Label>
                                    <asp:TextBox ID="txtemail" runat="server" Visible="False"></asp:TextBox></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    Occupation:
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:Label ID="lbloccupation" runat="server"></asp:Label>
                                    <asp:TextBox ID="txtoccupation" runat="server" Visible="False"></asp:TextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    Mobile Number:
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:Label ID="lblmobilenumber" runat="server"></asp:Label>
                                    <asp:TextBox ID="txtmobilenumber" runat="server" Visible="False"></asp:TextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    LandLine Number:
                                </p>
                            </td>
                            <td>
                                <p>
                                    <asp:Label ID="lbllandlinenumber" runat="server"></asp:Label>
                                    <asp:TextBox ID="txtlandlinenumber" runat="server" Visible="False"></asp:TextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" /></p>
                            </td>
                            <td>
                                <p>
                                    <asp:Button ID="btnsave" runat="server" Text="Save" Enabled="False" OnClick="btnsave_Click" /></p>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- end of column two -->
            <div class="profilecolumn">
                <div class="right_box">
                <div class="top_right_box">
                </div>
                <div class="center_right_box">
                    <div class="box_title">
                        
                        <div>
                            <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
                        
                        </div>
                        
                    </div>
                </div>
                <div class="bottom_right_box">
                </div>
                </div>

                <div class="right_box">
                <div class="top_right_box">
                </div>
                <div class="center_right_box">
                    <div class="box_title">
                        <span>Photo Upload</span>
                        <br />
                        <br />
                        <div>
                           <div>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <br />
                            <br />
                            <asp:Button ID="btnUpload" runat="server" Text="Save" OnClick="btnUpload_Click" />
                        </div>
                        <asp:Label ID="lblmsg" runat="server" Font-Size="Small" ForeColor="#006600"></asp:Label>
                    </div>
                </div>
                </div>
                <div class="bottom_right_box">
                </div>
                </div>
            </div>
            <!-- end of column three -->
        </div>
        <!-- end of main_content -->
        <div id="footer">
            <div id="copyright">
                <div style="float: left; padding: 3px;">
                    <a href="#">
                        <img src="images/footer_logo.png" width="42" height="35" alt="" title="" border="0" /></a></div>
                <div style="float: left; padding: 14px 10px 10px 10px;">
                    WebAthma.&copy; All Rights Reserved 2012 - By <a href="http://www.webathma.com" style="color: #772c17;">
                        www.webathma.com</a></div>
            </div>
        </div>
    </div>
    <!-- end of main_container -->
    </form>
</body>
</html>
