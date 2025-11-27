<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="WebApplication3.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
  <div class="row margin-top-60">
    <div class="col-6">
      <div class="border box-shadow padding-14">
        <h2>Fale Conosco</h2>
        <br />
        <asp:Label ID="Alerta" runat="server" Font-Size="16px" ForeColor="#FF0000"></asp:Label>
        <br />
        <label>Seu Nome</label>
        <asp:TextBox ID="SeuNome" MaxLength="100" runat="server"></asp:TextBox>
        <label>E-mail</label>
        <asp:TextBox ID="Email" MaxLength="255" TextMode="Email" runat="server"></asp:TextBox>
        <label>Mensagem</label>
        <asp:TextBox ID="Mensagem" MaxLength="255" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
        <br />
      </div>
    </div>
    <div class="col-6">
      <div class="border box-shadow">
        MAPA VAI AQUI
      </div>
    </div>
  </div>
</asp:Content>
