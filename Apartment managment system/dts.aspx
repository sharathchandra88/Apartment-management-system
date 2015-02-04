<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dts.aspx.cs" Inherits="dts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .style1
        {
            width: 203px;
        }
        .style2
        {
            width: 249px;
        }
        .style3
        {
            width: 192px;
        }
        .style4
        {
            width: 227px;
        }
    </style>
</head>
<body>
<form id="dts1" runat="server">
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
                <div id="createissue">
                <table border="0">
                <tr>
                  <td class="style1">
                    <p>House Number: </p>
                  </td>
                  <td class="style3">
                    <p><asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label></p>  
                  </td>
                  <td class="style1">
                <p>Contact Number: </p>
                </td>
                <td class="style4">
                <p>
                    <asp:TextBox ID="txtcontactnumber" runat="server"></asp:TextBox> </p>
                </td>
                
                </tr>
                <tr>
                 <td class="style1">
                <p>
                  Category : 
                 </p>
                </td>
                <td class="style3">
                <p>
                    <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcategory_SelectedIndexChanged">
                    <asp:ListItem Text="Select" Value="0"  Selected="True"> </asp:ListItem>
                    <asp:ListItem Text="Plumbing" Value="1"> </asp:ListItem>
                    <asp:ListItem Text="Security" Value="2"> </asp:ListItem>
                    <asp:ListItem Text="Electricity" Value="3"> </asp:ListItem>
                    <asp:ListItem Text="Wood work" Value="4"> </asp:ListItem>
                    <asp:ListItem Text="Swimming pool" Value="5"> </asp:ListItem>
                    <asp:ListItem Text="Club House" Value="6"> </asp:ListItem>
                    <asp:ListItem Text="Garden" Value="7"> </asp:ListItem>
                    <asp:ListItem Text="Vehicle Parking" Value="8"> </asp:ListItem>
                    <asp:ListItem Text="House Keeping" Value="9"> </asp:ListItem>
                    <asp:ListItem Text="Outdoor Sports" Value="10"> </asp:ListItem>
                    <asp:ListItem Text="Telephone" Value="11"> </asp:ListItem>
                    <asp:ListItem Text="Others" Value="12"> </asp:ListItem>
                    
                    </asp:DropDownList> 
                    <asp:TextBox ID="txtother" runat="server" Visible="False" Width="120px"></asp:TextBox>
                    </p>
                    
                </td>
                 <td class="style1"> 
                 <p>
                   Date :
                 </p>
                 </td>
                 <td class="style2">
                 <p>
                     <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label> </p>
                 </td>
                </tr>
                
                <tr>
                <td class="style1">
                 <p>Problem Description:</p>
                </td>
                <td class="style3">
                <p>
                    <asp:TextBox ID="txtproblemdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                </p>
                </td>
                <td>
                <p>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                        onclick="btnsubmit_Click" />
                </p>
                </td>
                </tr>
                
                </table>

                </div>
                <div id="viewissue">
                
                    <asp:GridView ID="userissue" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                
                </div>
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
    <!-- end of main_container -->
    </form>
</body>
</html>

