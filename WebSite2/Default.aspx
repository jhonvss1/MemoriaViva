<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Memória Viva</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server" class="app">
        <sidebar class="sidebar">
            <!-- logo -->
            <div>
                <div class="d-flex justify-content-center py-3">
                    <img
                        src="imgs/logo.png"
                        alt="Logomarca"
                        class="img-fluid"
                        style="max-width: 150px" />
                </div>

                <!-- filtros -->
                <div class="py-3">
                    <svg xmlns="http://www.w3.org/2000/svg"
                        width="20"
                        height="20"
                        viewBox="0 0 24 24">
                        <path fill="currentColor"
                            d="M21 4v2h-1l-5 7.5V22H9v-8.5L4 6H3V4zM6.404 6L11 12.894V20h2v-7.106L17.596 6z" />
                    </svg>

                    <asp:Button
                        ID="btnOrdemAleatoria"
                        runat="server"
                        CssClass="btn-filtro-ativo"
                        OnClick="btnOrdemAleatoria_Click" Text="Ordem Aleatória" />

                    <asp:Button
                        ID="btnOrdemAlfabetica"
                        runat="server"
                        CssClass="btn-filtro-inativo"
                        OnClick="btnOrdemAlfabetica_Click" Text="Ordem Alfabética" />
                </div>
            </div>

            <!-- lista c todos os cards -->
            <div class="lista-cards">
                <!-- card individual -->
                <div
                    class="card card-item"
                    data-bs-toggle="modal"
                    data-bs-target="#perfil">
                    <div class="card-body row g-0">
                        <div class="col-10 p-3">
                            <h5 class="card-title mb-2">
                                <strong>Matheus Oliveira Oliveira Oliveira</strong>
                            </h5>
                            <p class="card-text mb-2">✟ 25/01/2027</p>
                            <div class="d-flex gap-2">
                                <asp:Button
                                    ID="btnAcenderVela1"
                                    runat="server"
                                    class="btn btn-acender-vela"
                                    Text="Acender vela 🔥"
                                    OnClick="btnAcenderVela_Click" />
                                <button
                                    type="button"
                                    class="btn btn-escrever-prece"
                                    data-bs-toggle="modal"
                                    data-bs-target="#modalPrece">
                                    Escrever prece ✍️
                 
                                </button>
                            </div>
                        </div>
                        <div
                            class="col-2 d-flex flex-column align-items-center justify-content-center">
                            <span class="h1 text-center vela-icone">🕯️</span>
                            <span class="h6 px-2 py-1 vela-numero">
                                <strong>110</strong>
                            </span>
                        </div>
                    </div>
                </div>
                <!-- card individual -->
                <div
                    class="card card-item"
                    data-bs-toggle="modal"
                    data-bs-target="#perfil">
                    <div class="card-body row g-0">
                        <div class="col-10 p-3">
                            <h5 class="card-title mb-2">
                                <strong>Matheus Oliveira Oliveira Oliveira</strong>
                            </h5>
                            <p class="card-text mb-2">✟ 25/01/2027</p>
                            <div class="d-flex gap-2">
                                <asp:Button
                                    ID="btnAcenderVela2"
                                    runat="server"
                                    class="btn btn-acender-vela"
                                    Text="Acender vela 🔥"
                                    OnClick="btnAcenderVela_Click" />
                                <button
                                    type="button"
                                    class="btn btn-escrever-prece"
                                    data-bs-toggle="modal"
                                    data-bs-target="#modalPrece">
                                    Escrever prece ✍️
                                </button>
                            </div>
                        </div>
                        <div
                            class="col-2 d-flex flex-column align-items-center justify-content-center">
                            <span class="h1 text-center vela-icone">🕯️</span>
                            <span class="h6 px-2 py-1 vela-numero">
                                <strong>110</strong>
                            </span>
                        </div>
                    </div>
                </div>
                <!-- card individual -->
                <div
                    class="card card-item"
                    data-bs-toggle="modal"
                    data-bs-target="#perfil">
                    <div class="card-body row g-0">
                        <div class="col-10 p-3">
                            <h5 class="card-title mb-2">
                                <strong>Matheus Oliveira Oliveira Oliveira</strong>
                            </h5>
                            <p class="card-text mb-2">✟ 25/01/2027</p>
                            <div class="d-flex gap-2">
                                <asp:Button
                                    ID="btnAcenderVela3"
                                    runat="server"
                                    class="btn btn-acender-vela"
                                    Text="Acender vela 🔥"
                                    OnClick="btnAcenderVela_Click" />
                                <button
                                    type="button"
                                    class="btn btn-escrever-prece"
                                    data-bs-toggle="modal"
                                    data-bs-target="#modalPrece">
                                    Escrever prece ✍️
                                </button>
                            </div>
                        </div>
                        <div
                            class="col-2 d-flex flex-column align-items-center justify-content-center">
                            <span class="h1 text-center vela-icone">🕯️</span>
                            <span class="h6 px-2 py-1 vela-numero">
                                <strong>110</strong>
                            </span>
                        </div>
                    </div>
                </div>
                <!-- card individual -->
                <div
                    class="card card-item"
                    data-bs-toggle="modal"
                    data-bs-target="#perfil">
                    <div class="card-body row g-0">
                        <div class="col-10 p-3">
                            <h5 class="card-title mb-2">
                                <strong>Matheus Oliveira Oliveira Oliveira</strong>
                            </h5>
                            <p class="card-text mb-2">✟ 25/01/2027</p>
                            <div class="d-flex gap-2">
                                <asp:Button
                                    ID="btnAcenderVela4"
                                    runat="server"
                                    class="btn btn-acender-vela"
                                    Text="Acender vela 🔥"
                                    OnClick="btnAcenderVela_Click" />
                                <button
                                    type="button"
                                    class="btn btn-escrever-prece"
                                    data-bs-toggle="modal"
                                    data-bs-target="#modalPrece">
                                    Escrever prece ✍️
                                </button>
                            </div>
                        </div>
                        <div
                            class="col-2 d-flex flex-column align-items-center justify-content-center">
                            <span class="h1 text-center vela-icone">🕯️</span>
                            <span class="h6 px-2 py-1 vela-numero">
                                <strong>110</strong>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- botão add falecido -->
            <button
                type="button"
                class="btn botao-adicionar mt-3 p-3 btn-dark"
                data-bs-toggle="modal"
                data-bs-target="#adicionarVitima">
                Adicionar Vítima
            </button>
        </sidebar>

        <!-- div da vela gigante, fica pra v2 -->
        <div class="background"></div>

        <!-- modal cadastro -->
        <div
            class="modal fade"
            id="adicionarVitima"
            data-bs-backdrop="static"
            data-bs-keyboard="false"
            tabindex="-1"
            aria-labelledby="staticBackdropLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Adicionar Vítima
                        </h1>
                        <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="nomeFalecido" class="form-label">Nome</label>
                            <input
                                type="text"
                                class="form-control"
                                id="nomeFalecido"
                                placeholder="Nome completo do falecido" />
                        </div>
                        <div class="mb-3">
                            <label for="dataNascimento" class="form-label">
                                Data de Nascimento</label>
                            <input
                                type="date"
                                class="form-control"
                                id="dataNascimento"
                                placeholder="Data em que a vítima nasceu" />
                        </div>
                        <div class="mb-3">
                            <label for="dataFalecimento" class="form-label">
                                Data do Falecimento</label>
                            <input
                                type="date"
                                class="form-control"
                                id="dataFalecimento"
                                placeholder="Data em que a vítima nasceu" />
                        </div>
                        <div class="mb-3">
                            <label for="localObito" class="form-label">
                                Local do Óbito</label>
                            <input
                                type="text"
                                class="form-control"
                                id="localObito"
                                placeholder="Local onde ocorreu o acidente" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="d-grid col-8 mx-auto">
                            <asp:Button
                                ID="btnAdicionarVitimaModal"
                                runat="server"
                                class="btn btn-dark px-3"
                                Text="Adicionar"
                                OnClick="btnAdicionarVitimaModal_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- modal perfil -->
        <div
            class="modal fade"
            id="perfil"
            tabindex="-1"
            aria-labelledby="staticBackdropLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">
                            <strong>Thyago Alves Tenório Da Silva</strong>
                        </h1>
                        <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                        <div></div>
                    </div>
                    <div class="modal-body">
                        <div class="text-center m-4">
                            <p class="h5">⭐ 01/01/2001</p>
                            <p class="h5 mb-4">✝️ 01/01/2004</p>
                            <em class="h6">Local do Acidente: Uninassau</em>
                        </div>
                        <!-- Card da prece no perfil -->
                        <div class="card prece mb-3">
                            <div class="card-body">
                                <em class="card-text">"Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Nulla doloribus voluptatum minima sequi, laudantium
                    temporibus illo consectetur molestiae optio quaerat dolores
                    debitis quo illum cum eum ab, totam, praesentium nihil."</em>
                            </div>
                            <div class="card-footer text-end">— Por Matheus Oliveira</div>
                        </div>
                        <div class="card prece mb-3">
                            <div class="card-body">
                                <em class="card-text">"Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Nulla doloribus voluptatum minima sequi, laudantium
                    temporibus illo consectetur molestiae optio quaerat dolores
                    debitis quo illum cum eum ab, totam, praesentium nihil."</em>
                            </div>
                            <div class="card-footer text-end">— Por Matheus Oliveira</div>
                        </div>
                        <div class="card prece mb-3">
                            <div class="card-body">
                                <em class="card-text">"Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Nulla doloribus voluptatum minima sequi, laudantium
                    temporibus illo consectetur molestiae optio quaerat dolores
                    debitis quo illum cum eum ab, totam, praesentium nihil."</em>
                            </div>
                            <div class="card-footer text-end">— Por Matheus Oliveira</div>
                        </div>
                        <div class="card prece mb-3">
                            <div class="card-body">
                                <em class="card-text">"Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Nulla doloribus voluptatum minima sequi, laudantium
                    temporibus illo consectetur molestiae optio quaerat dolores
                    debitis quo illum cum eum ab, totam, praesentium nihil."</em>
                            </div>
                            <div class="card-footer text-end">— Por Matheus Oliveira</div>
                        </div>
                        <div class="card prece mb-3">
                            <div class="card-body">
                                <em class="card-text">"Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Nulla doloribus voluptatum minima sequi, laudantium
                    temporibus illo consectetur molestiae optio quaerat dolores
                    debitis quo illum cum eum ab, totam, praesentium nihil."</em>
                            </div>
                            <div class="card-footer text-end">— Por Matheus Oliveira</div>
                        </div>
                        <div class="card prece mb-3">
                            <div class="card-body">
                                <em class="card-text">"Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Nulla doloribus voluptatum minima sequi, laudantium
                    temporibus illo consectetur molestiae optio quaerat dolores
                    debitis quo illum cum eum ab, totam, praesentium nihil."</em>
                            </div>
                            <div class="card-footer text-end">— Por Matheus Oliveira</div>
                        </div>
                    </div>
                    <div class="modal-footer"></div>
                </div>
            </div>
        </div>

        <!-- modal prece -->
        <div
            class="modal fade"
            id="modalPrece"
            data-bs-backdrop="static"
            data-bs-keyboard="false"
            tabindex="-1"
            aria-labelledby="staticBackdropLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Prece para Thyago
                        </h1>
                        <button
                            type="button"
                            class="btn-close"
                            data-bs-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="nomeFalecido" class="form-label">Seu nome</label>
                            <input
                                type="text"
                                class="form-control"
                                id="txtNomeFalecido"
                                placeholder="Digite seu nome completo" />
                        </div>
                        <p class="h5">Você deseja...</p>
                        <div class="form-check">                          
                            <label class="form-check-label" for="flexRadioDefault2">
                                Escrever sua prece
                            </label>
                        </div>
                        <div class="mb-3">
                            <textarea
                                class="form-control"
                                id="exampleFormControlTextarea1"
                                rows="3"></textarea>
                        </div>           
                    </div>
                    <div class="modal-footer">
                        <div class="d-grid col-8 mx-auto">
                            <asp:Button
                                ID="btnSalvarPrece"
                                runat="server"
                                class="btn btn-success"
                                Text="Salvar Prece"
                                OnClick="btnSalvarPrece_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>
