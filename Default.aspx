<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Newsclip_Project.Default" %>

<!DOCTYPE html>
   <link href="Design/StyleSheet1.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jarrod Londt</title>
   
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">

        <div id="Header"> Newsclip Junior Project </div>

        <div id="Linkdiv"> <a href="Default.aspx">Home</a> | <a href="EditForm.aspx">Edit</a> </div>
        
        <div id="Base">
            <asp:Image ID="pfpIcon" runat="server" Height="232px" Width="266px" />
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
        </div>

        <div class="auto-style1">
      <div style="width: 100%">
          <h4 id="Heading3"> Qualifications</h4>

          <div>
              <asp:Label ID="Quallbl" runat="server" Text="Label"></asp:Label>
          </div>

      </div>

        

            <div id="ContentL">
            
                <h4 id="Heading1"> Personal Info</h4>
                <div>
                <asp:Label ID="Age" runat="server" Text="22 Years old"></asp:Label>
                </div>
                <div>
                <asp:Label ID="Location" runat="server" Text="Pretoria, South Africa"></asp:Label>
                </div>
                <asp:Label ID="Phonelbl" runat="server" Text="072 824 6312"></asp:Label>
                <div>
                <asp:Label ID="Emaillbl" runat="server" Text="Jarrodlondtwork@gmail.com"></asp:Label>
            </div>

             </div>
    
            <div id="ContentR">
                <h4 id="Heading2"> About me</h4>
                <div>
                    <asp:Label ID="Biolbl" runat="server" Text="Label"></asp:Label>
                </div>
                
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [NewsclipTable]"></asp:SqlDataSource>
        </div>

        

    </form>
</body>
</html>
