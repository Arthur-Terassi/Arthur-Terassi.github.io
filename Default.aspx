<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- este conteúdo será enviado para o HEAD do site.maste -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <!-- este conteúdo será exibido no BODY da pagina mestra -->
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="images/banner03.jpg" />
            </li>
            <li>
                <img src="images/banner02.jpg" />
            </li>
            <li>
                <img src="images/banner01.jpg" />
            </li>
            <li>
                <img src="images/banner04.jpg" />
            </li>
        </ul>
    </div>
    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                ontimeupdate: 10
            });
        });
    </script>
    <div class="margin-top-60">
        <div class="row">
            <div class="col-4">
                <div class="border">
                    <div class="conteiner">
                        <div class="promocao">PROMOÇÃO!!!</div>
                        <img width="100%" src="images/armas6.jpg" />
                    </div>
                    <br />
                    <div class="padding-14 justify">
                        <h2>Promoção para Novos Clientes</h2>
                        <br />
                        Novos clientes têm 20% de desconto no primeiro serviço contratado. Aproveite essa oportunidade para experimentar nossos serviços de alta qualidade e atendimento personalizado.
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="border">
                    <div class="conteiner">
                        <img width="100%" src="images/armas7.jpg" />
                    </div>
                    <br />
                    <div class="padding-14 justify">
                        <h2>Estilização à Sua Escolha</h2>
                        <br />
                        Todos nossos produtos podem ser estilizados conforme a preferência do cliente. Escolha entre uma variedade de cores, padrões e acabamentos para personalizar seu produto de acordo com seu estilo único.
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="border">
                    <div class="conteiner">
                        <div class="promocao">PROMOÇÃO!!!</div>
                        <img width="100%" src="images/23.png" />
                    </div>
                    <br />
                    <div class="padding-14 justify">
                        <h2>Promoção de Armas de Calibre Pesado</h2>
                        <br />
                        Queremos ver você sair daqui com uma arma de calibre pesado! Aproveite nossa promoção especial e adquira sua arma de alta potência com condições imperdíveis. Não perca essa chance de garantir sua segurança com estilo e eficiência.
                    </div>
                </div>
            </div>

        </div>

        <div class="row margin-top-120">
            <div class="col-9">
                <div class="padding-14">
                    <img width="100%" src="Images/icone.png" />
                    <h2>Sobre Nós</h2>
                    <br />
                    <p class="justify">O Disparo 0 é uma organização de E-Commerce dedicada à venda de armas de fogo, somos totalmente legalizados e atuamos nos principais países onde a venda de armas é legal! Nossa sede é no Brasil, mas nossas lojas estão ao redor de todo o mundo! Nós acreditamos que a melhor defesa é o ataque e que nenhum ladrão ousaria invadir sua casa se você aparecesse com uma AK-47 na mão! Então buscamos tornar acessível a segurança através dos nossos brinquedinhos, venha você também trazer segurança para sua vizinhança com seu fuzil de assalto automático!</p>
                </div>
            </div>


        </div>
    </div>
</asp:Content>
