<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditForm.aspx.cs" Inherits="Newsclip_Project.WebForm1" %>

<!DOCTYPE html>
<link href="Design/StyleSheet2.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jarrod Londt</title>
    
    <style type="text/css">
        #Text1 {
            width: 364px;
            height: 164px;
        }
        #Text3 {
            margin-bottom: 0px;
        }
        #Text8 {
            width: 374px;
            height: 148px;
        }
        #Biotxt {
            height: 198px;
            width: 387px;
        }
        #Qualtxt {
            height: 171px;
            width: 387px;
        }
        #base {
            height: 220px;
        }
        #NameDiv {
            height: 38px;
        }
        #Nametxt {
            height: 17px;
        }
        #SurnameDiv {
            height: 37px;
        }
        #BioDiv {
            height: 221px;
        }
        #AgeDiv {
            height: 38px;
        }
        #numberDiv {
            height: 35px;
        }
        #LocDiv {
            height: 36px;
        }
        #EmailDiv {
            height: 36px;
        }
        #QualDiv {
            height: 196px;
        }
        #Footer {
            height: 44px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
            width: 295px;
            height: 162px;
        }
        .auto-style12 {
            height: 162px;
        }
        .auto-style15 {
            height: 152px;
        }
        .auto-style16 {
            width: 295px;
            height: 152px;
        }
        .auto-style18 {
            height: 45px;
        }
        .auto-style19 {
            height: 39px;
        }
        .auto-style20 {
            width: 295px;
            height: 39px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="Header"> Newsclip Junior Project </div>
        <div id="Linkdiv"> <a href="Default.aspx">Home</a> | <a href="EditForm.aspx">Edit</a> </div>
        <div id="MainDiv">
            </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style20">
                    Profile Picture</td>
                <td class="auto-style19">
                    <asp:FileUpload ID="Uploader" runat="server" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" Width="111px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Qualifications</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Qualtxt" runat="server" Height="149px" Width="314px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Age</td>
                <td class="auto-style19">
                    <asp:TextBox ID="Agetxt" runat="server" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Current Location</td>
                <td class="auto-style19">
                    <asp:TextBox ID="Loctxt" runat="server" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Email</td>
                <td class="auto-style19">
                    <asp:TextBox ID="Emailtxt" runat="server" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Phone Number</td>
                <td class="auto-style19">
                    <asp:TextBox ID="Phonetxt" runat="server" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Name</td>
                <td class="auto-style19">
                    <asp:TextBox ID="nametxt" runat="server" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Surname</td>
                <td class="auto-style19">
                    <asp:TextBox ID="Surntxt" runat="server" Width="177px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">About Yourself</td>
                <td class="auto-style12">
                    <asp:TextBox ID="Biotxt" runat="server" Height="149px" Width="314px"></asp:TextBox>
                </td>
            </tr>
        </table>
        
        <div id="Footer" class="auto-style18">
            <asp:Button ID="Button2" runat="server" Text="Save Changes" Width="129px" OnClick="Button2_Click" UseSubmitBehaviour="false"  />
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NewsclipTable]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
