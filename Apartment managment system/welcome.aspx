<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="welcome_page" runat="server">
    <div id="main_container">
        <div id="header">
            <div id="logo">
                <a href="welcome.aspx">
                    <img src="images/apartmentlogo.png" width="250" height="40" alt="" title="" border="0" /></a>
            </div>
            <div id="home_logout">
                <asp:LinkButton ID="btnhome" runat="server" Text="Home" BackColor="#3B5998" 
                    BorderStyle="None" ForeColor="White" />
                <asp:LinkButton ID="btnlogout" runat="server" Text="Logout" BackColor="#3B5998" 
                    BorderStyle="None" ForeColor="White" />
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
                           <a href="profile.aspx" style="text-decoration:none"><span>Profile</span></a>
                            
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbluname" runat="server" ForeColor="#000099"></asp:Label>
                            </p>
                           
                            <asp:Image ID="Image1" runat="server" Width="70px" Height="70px" /> 
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
                <div class="small_title">
                    Notice</div>
                <div class="wabluebox">
                    <div id="noticetable">
                    <table border="0" style="margin: 0px; border-style: none; border-color: transparent; padding-top: 0px;" 
                        width="100%" cellspacing="-8" cellpadding="-8">
                        <tr align="left" style="padding: 0px; margin: 0px">
                        
                            <td class="style1" style="margin: 1px; padding: 0px; border-style: none;" 
                                width="5px"><p>
                                <asp:Label ID="lbldearall" runat="server" Text="Dear All"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblDate" runat="server" ForeColor="#000000"></asp:Label> </p> </td>
                            
                        </tr>
                        <tr>
                        <td align="left" colspan="2" class="style1" 
                                style="margin: 0px; padding: 0px; border-style: none;"><p>
                                    <asp:Label ID="lblsubject" runat="server" Text="Subject :"></asp:Label>&nbsp; <asp:Label ID="lblNotice" runat="server" ForeColor="#000000"></asp:Label></p></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="style1" 
                                style="margin: 0.5px; padding: 0px; border-style: none;"><p><asp:Label ID="lblDescription" runat="server" ForeColor="#000000"></asp:Label></p></td>
                        </tr>
                    </table>
                    </div>
                    
                </div>
                <div class="small_title1">
                    <a href="notice.aspx" style="text-decoration: none; color: Silver">More Notice</a></div>
                <div class="small_title2">
                    Latest Events</div>
                <div class="wabluebox">
                    <div id="EventsTable">
                    <table border="0" style="margin: 0px; border-style: none; border-color: transparent; padding-top: 0px;" 
                        width="100%" cellspacing="-8" cellpadding="-8">
                        <tr align="left" style="padding: 0px; margin: 0px">
                        
                            <td class="style1" style="margin: 1px; padding: 0px; border-style: none;" 
                                width="5px"><p align="right">
                                &nbsp;<asp:Label ID="lblDat" runat="server" ForeColor="#000000"></asp:Label> </p> </td>
                            
                        </tr>
                        <tr>
                        <td align="left" colspan="2" class="style1" 
                                style="margin: 0px; padding: 0px; border-style: none;"><p>
                                    <asp:Label ID="Event" runat="server" Text="Event :"></asp:Label>&nbsp; <asp:Label ID="lblEvent" runat="server" ForeColor="#000000"></asp:Label></p></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="style1" 
                                style="margin: 0.5px; padding: 0px; border-style: none;"><p><asp:Label ID="lblDesc" runat="server" ForeColor="#000000"></asp:Label></p></td>
                        </tr>
                    </table>
                    </div>
                </div>
                <div class="small_title1">
                    <a href="#" style="text-decoration: none; color: Silver">More Events</a></div>
            </div>
            <!-- end of column two -->
            <div class="column3">
                <div class="main_text_box">
                </div>
                <div class="right_box">
                    <div class="top_right_box">
                    </div>
                    <div class="center_right_box">
                        <div class="box_title">
                        <br />
                        <br />

                            <span>Welcome to WebAthma Apartment Solutions</span></div>
                            <br />
                            <br />
                            
                            

                    </div>
                    <div class="bottom_right_box">
                    </div>
                </div>
                <div class="right_box">
                    <div class="top_right_box">
                    </div>
                    <div class="center_right_box">
                        <div class="box_title">
                            <span>Tickets</span></div>
                            <div id="latest5tickets">
                                <asp:GridView ID="grvlatest5tickets" runat="server" CellPadding="4" 
                                    ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            
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
