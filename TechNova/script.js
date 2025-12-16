// Mostra um alerta rápido quando a página carrega
window.addEventListener("load", () => {
  console.log("Dashboard carregado com sucesso!");
});

// Função para destacar itens com estoque baixo
function destacarBaixos() {
  const linhas = document.querySelectorAll("table tr");

  linhas.forEach(linha => {
    const colunaValor = linha.children[1];

    if (colunaValor && colunaValor.textContent.includes("baixo")) {
      linha.style.background = "#ffe4e6"; // leve tom vermelho
      linha.style.fontWeight = "600";
    }
  });
}

// Chama a função
destacarBaixos();
