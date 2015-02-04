<%@ Page Language="C#" AutoEventWireup="true" CodeFile="topics.aspx.cs" Inherits="topics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Topics</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
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
                            <span>Profile</span></div>
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
            <div class="discColumn2" >
                <form id="form1" runat="server">
                        <div style="OVERFLOW:auto;HEIGHT:330px">
                           <asp:DataGrid ID="GridView1" runat="server"  Width="621px" CellPadding="4" 
                               GridLines="Vertical" ForeColor="#333333" AllowSorting="True" 
                               >
                            <Columns>
                                <asp:HyperLinkColumn DataNavigateUrlField="Topic" 
                                    DataNavigateUrlFormatString="discussions.aspx?Topic={0}" 
                                    NavigateUrl="discussions.aspx" Text="View"></asp:HyperLinkColumn>
                            </Columns>
                            
                            <AlternatingItemStyle BackColor="White" />
                            <EditItemStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#EFF3FB" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        </asp:DataGrid>
                        </div>
                    
                        <div id="formview">
                            
                                    <table>
                                <tr>
                                    <td>Topic: </td>
                                    <td><asp:TextBox ID="txtTopic" runat="server"/></td>
                                </tr>
                                <tr>
                                    <td>Comments:</td>
                                    <td><asp:TextBox ID="txtComments" runat="server" Columns="50" Rows="4" TextMode="MultiLine"/></td>
                                </tr>
                                <tr>
                                    <td><asp:HiddenField ID="hidDate" runat="server"/></td>
                                    <td><asp:Button ID="butSubmit" runat="server" CommandName="Insert" Text="Submit" onclick="butSubmit_Click" /></td>
                                </tr>
                            </table>
                         </div>
                               
                </form>
            </div>
            <!-- end of column two -->
            <div class="column3">
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
</body>
</html>
