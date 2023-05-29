<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="DynamicCvProject.YetenekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4 style="margin-left: 50PX">YETENEK GÜNCELLEME SAYFASI</h4>
    <br />
    <div style="margin-left: 50px; margin-top: 20px">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <div style="margin-left: 50px; margin-top: 50px">
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-group" OnClick="Button1_Click"/>
    </div>

</asp:Content>
