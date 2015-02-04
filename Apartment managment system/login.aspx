<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    
</head>
<body >
    <form id="form1" runat="server">
    <div id="main_container">

<div id="header">

       <div id="logo">
        <a href="welcome.aspx"><img src="images/apartmentlogo.png" width="250" height="40" alt="" title="" border="0" /></a>
       </div>
           
         


<div class="menu">



</div>






</div>
    

    
    <div id="main_content"> 
    	<div class="column1">
        
        
        	<%--<div class="left_box">
            	<div class="top_left_box">
                </div>
                <div class="center_left_box">
                	<div class="box_title"><span>Profile</span></div>
                    
                                    
                
                </div>
                <div class="bottom_left_box">
                </div>
            </div>
            
            
 
        	<div class="left_box">
            	<div class="top_left_box">
                </div>
                <div class="center_left_box">
                	<ul style="list-style:none">
                    <li style="margin-bottom:25px"><a href="#" class="watab">Notice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>  </li>
                   <li style="margin-bottom:25px"> <a href="#" class="watab">Events&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>  
                   <li style="margin-bottom:25px"> <a href="#" class="watab">Documents&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>  
                   <li style="margin-bottom:25px"> <a href="discussions.aspx" class="watab">Discussions&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>  
                    <li style="margin-bottom:25px"><a href="#" class="watab">Lodge Issues&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    </ul>  
                    </div>
                
                
                
                <div class="bottom_left_box">
                </div>
            </div> 
            <div class="left_box">
            	<div class="top_left_box">
                </div>
                <div class="center_left_box">
                	<div class="box_title"><span>Poll</span></div>
                    
                                    
                
                </div>
                <div class="bottom_left_box">
                </div>
            </div>
 
        	
 
 
 --%>
 
 
 
 
            
        
        </div><!-- end of column one -->
   
   		<div class="column2">
        	
            
        	<div class="login">Login</div> 
            
            <div class="loginwabluebox">
            	<table border=0px id="tablelogin" frame="void" rules="none" 
                    style="border-style: none">
                <tr>
                <td style="border-style: none">
                <asp:Label ID="lblusername" runat="server" Text="User Name: "></asp:Label>
                </td>
                <td class="style2" style="border-style: none">
                <asp:TextBox ID="txtusername" runat="server" Height="20px" 
                    Width="135px"></asp:TextBox>
                </td>
                <td style="border-style: none" align="left">
                
                    <asp:RequiredFieldValidator ID="rfvusername" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="Enter User Name" 
                        Font-Size="Smaller" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                
                </td>
                </tr>
                <tr>
                <td class="style1" style="border: thin none #000000">
                <asp:Label ID="lblpassword" runat="server" Text="Password: "></asp:Label>
                </td>
                <td class="style3" style="border: thin none #000000">
                 <asp:TextBox ID="txtpassword" runat="server" Height="20px" TextMode="Password" 
                    Width="135px" ontextchanged="btnlogin_Click" ></asp:TextBox>
                </td>
                <td class="style1" style="border: thin none #000000" align="left">
                
                    <asp:RequiredFieldValidator ID="rfvpassword" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Enter Password" 
                        Font-Size="Smaller" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                
                </td>
                </tr>
                <tr>
                <td colspan=2 style="border-style: none">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnlogin" runat="server" BackColor="#666666" 
                    BorderColor="White" ForeColor="White" Text="Login" Font-Bold="True" 
                        Font-Names="Gulim" onclick="btnlogin_Click" /></p>
                </td>
                </tr>
                
                </table>
            
                
                
                
                

               
                
                
                
            	
            </div>
            <div bgcolor="#ECEFF6">
            <br />
            <br />
            <br />
            <br />
            <br /><br />
            <br />
            <br />
            <br />
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="warning" runat="server" 
                        ImageUrl="~/images/Warning_notification.png" Visible="False"/>&nbsp; <asp:Label ID="lblinvalidaccess" runat="server" ForeColor="#FF3300"></asp:Label></p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
            <%--<div class="small_title1"><a href="#" style="text-decoration:none;color:Silver">More Notice</a></div> 
            
            <div class="small_title2">Latest Events</div> 
            
            <div class="wabluebox">
            	
            </div>
            
            <div class="small_title1"><a href="#" style="text-decoration:none;color:Silver">More Events</a></div> 
            --%>
        </div><!-- end of column two -->
   




   		<div class="column3">
        	
            <%--<div class="main_text_box">

                   
        	</div>
            <div class="right_box">
            	<div class="top_right_box">
                </div>
                <div class="center_right_box">
                	<div class="box_title"><span>Profile</span></div>
                    
                                    
                
                </div>
                <div class="bottom_right_box">
                </div>
            </div>
             <div class="right_box">
            	<div class="top_right_box">
                </div>
                <div class="center_right_box">
                	<div class="box_title"><span>Profile</span></div>
                    
                                    
                
                </div>
                <div class="bottom_right_box">
                </div>
            </div>         --%>
            
        </div><!-- end of column three -->





		


   

	</div>
    <!-- end of main_content -->
    
<div id="footer">

	<div id="copyright">
    <div style="float:left; padding:3px;"><a href="#"><img src="images/footer_logo.png" width="42" height="35" alt="" title="" border="0" /></a></div>
    <div style="float:left; padding:14px 10px 10px 10px;"> WebAthma.&copy; All Rights Reserved 2012 - By <a href="http://www.webathma.com" style="color:#772c17;">www.webathma.com</a></div>
    </div>
    
      
</div>


</div>
<!-- end of main_container -->

    </form>

</body>
</html>