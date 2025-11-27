<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Galeria.aspx.cs" Inherits="WebApplication3.Galeria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="margin-top-60">
        <div class="row">
            <asp:Repeater OnItemDataBound="GridViewGaleria_ItemDataBound" ID="GridViewGaleria" runat="server">
                <itemtemplate>
                    <div class="col-12 box border padding-14">
                        <div class="row">
                            <div class="col-4">
                                <asp:HyperLink ID="LinkImagem" Target="_blank" runat="server">
                                    <asp:Image Width="100%" ID="Imagem" runat="server" />
                                </asp:HyperLink>
                            </div>
                            <div class="col-8 font-24">
                                <asp:Label ID="Nome" Font-Size="28px" runat="server"></asp:Label>
                                <br /><br />
                                R$<asp:Label ID="PrecoVenda" Font-Size="24px" runat="server"></asp:Label>
                                <br /><br />
                                <asp:Label ID="Descricao" runat="server" Font-Size="18px"></asp:Label>
                            </div>
                        </div>
                    </div>
                </itemtemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
