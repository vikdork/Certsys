<%@ Page Title="Certifikathanteraren" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Certificateweb._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Certifikatshanteraren</h1>
        <p>It-avdelningen Huddinge Kommun</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="CertId">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CertId" HeaderText="CertId" SortExpression="CertId" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="CommonName" HeaderText="CommonName" SortExpression="CommonName" />
                <asp:BoundField DataField="ExpirationDate" HeaderText="ExpirationDate" SortExpression="ExpirationDate" />
                <asp:BoundField DataField="SAN" HeaderText="SAN" SortExpression="SAN" />
                <asp:BoundField DataField="Issuer" HeaderText="Issuer" SortExpression="Issuer" />
                <asp:BoundField DataField="Function" HeaderText="Function" SortExpression="Function" />
                <asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" SortExpression="SerialNumber" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CertificateConnectionString %>" SelectCommand="SELECT [CertId], [CommonName], [ExpirationDate], [Issuer], [Function], [SerialNumber], [SAN] FROM [Cert]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cert] WHERE [CertId] = @original_CertId AND (([CommonName] = @original_CommonName) OR ([CommonName] IS NULL AND @original_CommonName IS NULL)) AND (([ExpirationDate] = @original_ExpirationDate) OR ([ExpirationDate] IS NULL AND @original_ExpirationDate IS NULL)) AND (([Issuer] = @original_Issuer) OR ([Issuer] IS NULL AND @original_Issuer IS NULL)) AND (([Function] = @original_Function) OR ([Function] IS NULL AND @original_Function IS NULL)) AND (([SerialNumber] = @original_SerialNumber) OR ([SerialNumber] IS NULL AND @original_SerialNumber IS NULL)) AND (([SAN] = @original_SAN) OR ([SAN] IS NULL AND @original_SAN IS NULL))" InsertCommand="INSERT INTO [Cert] ([CommonName], [ExpirationDate], [Issuer], [Function], [SerialNumber], [SAN]) VALUES (@CommonName, @ExpirationDate, @Issuer, @Function, @SerialNumber, @SAN)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Cert] SET [CommonName] = @CommonName, [ExpirationDate] = @ExpirationDate, [Issuer] = @Issuer, [Function] = @Function, [SerialNumber] = @SerialNumber, [SAN] = @SAN WHERE [CertId] = @original_CertId AND (([CommonName] = @original_CommonName) OR ([CommonName] IS NULL AND @original_CommonName IS NULL)) AND (([ExpirationDate] = @original_ExpirationDate) OR ([ExpirationDate] IS NULL AND @original_ExpirationDate IS NULL)) AND (([Issuer] = @original_Issuer) OR ([Issuer] IS NULL AND @original_Issuer IS NULL)) AND (([Function] = @original_Function) OR ([Function] IS NULL AND @original_Function IS NULL)) AND (([SerialNumber] = @original_SerialNumber) OR ([SerialNumber] IS NULL AND @original_SerialNumber IS NULL)) AND (([SAN] = @original_SAN) OR ([SAN] IS NULL AND @original_SAN IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CertId" Type="Int32" />
                <asp:Parameter Name="original_CommonName" Type="String" />
                <asp:Parameter Name="original_ExpirationDate" Type="DateTime" />
                <asp:Parameter Name="original_Issuer" Type="String" />
                <asp:Parameter Name="original_Function" Type="String" />
                <asp:Parameter Name="original_SerialNumber" Type="String" />
                <asp:Parameter Name="original_SAN" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CommonName" Type="String" />
                <asp:Parameter Name="ExpirationDate" Type="DateTime" />
                <asp:Parameter Name="Issuer" Type="String" />
                <asp:Parameter Name="Function" Type="String" />
                <asp:Parameter Name="SerialNumber" Type="String" />
                <asp:Parameter Name="SAN" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CommonName" Type="String" />
                <asp:Parameter Name="ExpirationDate" Type="DateTime" />
                <asp:Parameter Name="Issuer" Type="String" />
                <asp:Parameter Name="Function" Type="String" />
                <asp:Parameter Name="SerialNumber" Type="String" />
                <asp:Parameter Name="SAN" Type="String" />
                <asp:Parameter Name="original_CertId" Type="Int32" />
                <asp:Parameter Name="original_CommonName" Type="String" />
                <asp:Parameter Name="original_ExpirationDate" Type="DateTime" />
                <asp:Parameter Name="original_Issuer" Type="String" />
                <asp:Parameter Name="original_Function" Type="String" />
                <asp:Parameter Name="original_SerialNumber" Type="String" />
                <asp:Parameter Name="original_SAN" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="ContactId" DataSourceID="SqlDataSource2" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
                ContactId:
                <asp:Label ID="ContactIdLabel" runat="server" Text='<%# Eval("ContactId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Mail:
                <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
                <br />
                SamAccountName:
                <asp:Label ID="SamAccountNameLabel" runat="server" Text='<%# Eval("SamAccountName") %>' />
                <br />
                CertId:
                <asp:Label ID="CertIdLabel" runat="server" Text='<%# Eval("CertId") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CertificateConnectionString %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
    </div>

</asp:Content>
