import 'dart:collection';

void main() {
  // 1. Declare uma variável inteira idade
  int idade = 28;

  // 2. Crie uma variável double para altura
  double altura = 1.75;

  // 3. Defina uma variável String para o nome de um animal
  String animal = "Rex";

  // 4. Crie uma variável bool para lâmpada
  bool lampadaLigada = false;

  // 5. Declare a e b e calcule a soma
  int a = 10;
  int b = 3;
  int soma = a + b;
  print("5. Soma: $soma");

  // 6. Calcule o resto da divisão
  int resto = a % b;
  print("6. Resto: $resto");

  // 7. Valor de compra com 10% de desconto
  double valorCompra = 100.0;
  double valorFinal = valorCompra - (valorCompra * 0.10);
  print("7. Valor final: $valorFinal");

  // 8. Nome de produto concatenado com preço
  String produto = "Maçã";
  double preco = 5.50;
  print("8. O produto $produto custa R\$ $preco");

  // 9. Lista de três nomes de cidades e imprimir o segundo
  List<String> cidades = [
    "São Paulo",
    "Rio de Janeiro",
    "Belo Horizonte"
  ];
  print("9. Segundo nome: ${cidades[1]}");

  // 10. Conjunto (Set) com números e mostrar únicos
  Set<int> numerosSet = {1, 2, 3, 2};
  print("10. Elementos únicos: ${numerosSet.length}");

  // 11. Mapa (Map) de frutas e preços
  Map<String, double> frutasMap = {
    "Maçã": 2.50,
    "Banana": 1.20
  };

  print("11. Preço da Maçã: ${frutasMap["Maçã"]}");

  // 12. Variável dinâmica
  dynamic variavel = 42;
  variavel = "Agora é String";

  // 13. Operador ternário para maioridade
  int idadeVerificar = 20;

  String status =
      idadeVerificar >= 18
          ? "Maior de idade"
          : "Menor de idade";

  print("13. $status");

  // 14. Operador de coalescência nula (??)
  String? nomeNulo;

  String nomePadrao = nomeNulo ?? "Nome padrão";

  print("14. $nomePadrao");

  // 15. Variável final para PI
  final double pi = 3.14159;

  // 16. Exibir maior de idade ou não
  int idadeUsuario = 20;

  print(
      "16. ${idadeUsuario >= 18 ? 'Maior de idade' : 'Menor de idade'}");

  // 17. if/else para notas
  double nota = 6.5;

  print("17. Resultado da nota:");

  if (nota >= 7) {
    print("Aprovado");
  } else if (nota >= 5) {
    print("Recuperação");
  } else {
    print("Reprovado");
  }

  // 18. Par ou Ímpar ternário
  int numParImpar = 4;

  print(
      "18. O número $numParImpar é: ${numParImpar % 2 == 0 ? 'Par' : 'Ímpar'}");

  // 19. Switch case para dias da semana
  int dia = 3;

  print("19. Dia da semana:");

  switch (dia) {
    case 1:
      print("Domingo");
      break;

    case 2:
      print("Segunda");
      break;

    case 3:
      print("Terça");
      break;

    case 4:
      print("Quarta");
      break;

    case 5:
      print("Quinta");
      break;

    case 6:
      print("Sexta");
      break;

    case 7:
      print("Sábado");
      break;
  }

  // 20. Maior de três números
  int n1 = 5;
  int n2 = 10;
  int n3 = 3;

  int maior = n1;

  if (n2 > maior) maior = n2;
  if (n3 > maior) maior = n3;

  print("20. Maior: $maior");

  // 21. Loop for 10 até 1
  print("21. Contagem regressiva:");

  for (int i = 10; i >= 1; i--) {
    print(i);
  }

  // 22. Soma de pares de 1 a 100
  int somaPares = 0;

  for (int i = 2; i <= 100; i += 2) {
    somaPares += i;
  }

  print("22. Soma dos pares: $somaPares");

  // 23. Tabuada do 5
  int tab = 5;

  print("23. Tabuada do $tab:");

  for (int i = 1; i <= 10; i++) {
    print("$tab x $i = ${tab * i}");
  }

  // 24. Contador de números digitados (Simulado)
  print("24. Números digitados antes do negativo: 3");

  // 25. For-in maiúsculas
  List<String> nomesLista = ["Ana", "João", "Maria"];

  print("25. Nomes em maiúsculo:");

  for (String n in nomesLista) {
    print(n.toUpperCase());
  }

  // --- CHAMADAS DAS FUNÇÕES (Itens 26 a 30) ---

  print("26. Área: ${calcularAreaRetangulo(5, 10)}");

  print("27. Apresentação:");
  apresentarPessoa("Joaquim", 25);

  print("28. Email:");
  enviarEmail("professor@escola.com");

  print("29. Soma lista: ${somarLista([1, 2, 3, 4])}");

  print("30. Saudação:");
  saudacao("Estudante");

  // 31. Lista numeros add 40
  List<int> numeros31 = [1, 2, 3];

  numeros31.add(40);

  print("31. Terceiro elemento: ${numeros31[2]}");

  // 32. Remover banana
  var frutas32 = ['maçã', 'banana', 'laranja', 'banana'];

  frutas32.removeWhere((f) => f == 'banana');

  print("32. Frutas sem banana: $frutas32");

  // 33. Map transformar lista em Strings
  var listaStrings =
      [1, 2, 3].map((n) => 'Número $n').toList();

  print("33. $listaStrings");

  // 34. Set adicionar 'a' repetido
  var letrasSet = {'a', 'b', 'c'};

  letrasSet.add('a');

  print("34. Contém 'a': ${letrasSet.contains('a')}");

  // 35. União e Interseção
  var setA = {1, 2, 3};
  var setB = {3, 4, 5};

  print(
      "35. União: ${setA.union(setB)}, Interseção: ${setA.intersection(setB)}");

  // 36. Converter lista em Set
  print("36. Set único: ${[1, 2, 2, 3].toSet()}");

  // 37. Mapa pessoa cidade e idade
  var pessoaMap = {
    'nome': 'Ana',
    'idade': 25
  };

  pessoaMap['cidade'] = 'São Paulo';
  pessoaMap['idade'] = 26;

  print("37. Mapa atualizado: $pessoaMap");

  // 38. Adicionar tablet se não existir
  var prodMap = {
    'celular': 1500,
    'notebook': 3000
  };

  if (!prodMap.containsKey('tablet')) {
    prodMap['tablet'] = 1000;
  }

  print("38. Produtos: $prodMap");

  // 39. Operador spread (...)
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'c': 3};

  print("39. Combinado: ${{
    ...map1,
    ...map2
  }}");

  // 40. Queue fila
  Queue<String> fila = Queue.from([
    'primeiro',
    'segundo',
    'terceiro'
  ]);

  fila.removeFirst();

  print("40. Fila: $fila");

  // 41. addFirst e removeLast na Queue
  Queue<int> fInt = Queue.from([1, 2, 3]);

  fInt.addFirst(0);
  fInt.removeLast();

  print("41. Fila modificada: $fInt");

  // 42. Queue para lista e acessar segundo
  print(
      "42. Segundo da fila: ${Queue.from([1, 2, 3]).toList()[1]}");

  // 43. LinkedList com 3 nós
  var linked = LinkedList<Node>();

  linked.add(Node(10));
  linked.add(Node(20));
  linked.add(Node(30));

  print("43. LinkedList criada.");

  // 44. Remover nó 20
  linked.first.next?.unlink();

  print(
      "44. Restantes: ${linked.map((n) => n.valor).toList()}");

  // 45. Percorrer LinkedList e multiplicar por 2
  print("45. Valores x2:");

  for (var node in linked) {
    print(node.valor * 2);
  }

  // --- USO DAS CLASSES (Itens 46 a 61) ---

  // 46. Livro
  var livro = Livro(
      "Dom Casmurro",
      "Machado de Assis",
      1899);

  print("46. ${livro.exibirDetalhes()}");

  // 47. Contador
  var cont = Contador();

  cont.incrementar();

  print("47. Contador: ${cont.valor}");

  // 48. Aluno construtor nomeado
  var aluno2 = Aluno.semMatricula("Felipe");

  print(
      "48. Aluno: ${aluno2.nome}, Matrícula: ${aluno2.matricula}");

  // 49. Produto preco padrão
  var prod = ProdutoClasse("Caneta");

  print(
      "49. Produto: ${prod.nome}, Preço: ${prod.preco}");

  // 50. Carro herança
  var meuCarro = Carro("Toyota", 200, 4);

  print("50. Carro: ${meuCarro.marca}");

  // 51. Gato som
  print("51. Som do gato: ${Gato().emitirSom()}");

  // 52. Quadrado área
  print(
      "52. Área Quadrado: ${Quadrado(4).calcularArea()}");

  // 53. Notificações Email/SMS
  print("53. Teste Notificação:");

  Email().enviar();
  SMS().enviar();

  // 54. Conta Bancária
  print("54. Teste Saque:");

  var conta = ContaBancaria();

  conta.depositar(100);
  conta.sacar(50);

  // 55. Termômetro validação
  print("55. Termômetro:");

  Termometro().ajustarTemperatura(25);

  // 56. Retangulo getters/setters
  var ret = Retangulo();

  ret.largura = 10;
  ret.altura = 5;

  print(
      "56. Área Retângulo: ${ret.largura * ret.altura}");

  // 57. Usuário validar @
  var user = Usuario();

  user.email = "teste@dart.com";

  print("57. Email válido: ${user.email}");

  // 58. Interface Autenticável
  print(
      "58. Autenticar: ${UsuarioAut().autenticar('1234')}");

  // 59. Interface Calculável
  print(
      "59. Soma Interface: ${Soma().calcular(10, 5)}");

  // 60. Abstrata Dispositivo
  print("60. Ligar:");

  Celular().ligar();

  // 61. Abstrata Forma Triângulo
  print(
      "61. Área Triângulo: ${Triangulo(10, 5).calcularArea()}");

  // --- TRATAMENTO DE ERROS ---

  // 62. Divisão por zero
  try {
    int r = 10 ~/ 0;
    print(r);
  } catch (e) {
    print("62. Erro: Divisão por zero.");
  }

  // 63. Conversão String para Int
  try {
    int.parse("abc");
  } catch (e) {
    print("63. Erro: Formato inválido.");
  }

  // 64. Índice fora da lista
  try {
    var l = [1];
    print(l[5]);
  } catch (e) {
    print("64. Erro: Índice inválido.");
  }

  // 65. Exceção @ email
  try {
    if (!"email.com".contains("@")) {
      throw Exception("Email sem @");
    }
  } catch (e) {
    print("65. $e");
  }

  // 66. Função com Try/Catch
  print("66. Processar entrada:");

  processarEntrada("1");
}

// ================= FUNÇÕES =================

double calcularAreaRetangulo(
    double largura,
    double altura) {
  return largura * altura;
}

void apresentarPessoa(String nome, int idade) {
  print("Nome: $nome | Idade: $idade");
}

void enviarEmail(String email) {
  print("Email enviado para $email");
}

int somarLista(List<int> lista) {
  return lista.reduce((a, b) => a + b);
}

void saudacao(String nome) {
  print("Olá, $nome");
}

void processarEntrada(String valor) {
  try {
    int numero = int.parse(valor);
    print("Número convertido: $numero");
  } catch (e) {
    print("Erro ao converter");
  }
}

// ================= LINKED LIST =================

final class Node extends LinkedListEntry<Node> {
  int valor;

  Node(this.valor);
}

// ================= CLASSES =================

class Livro {
  String titulo;
  String autor;
  int ano;

  Livro(this.titulo, this.autor, this.ano);

  String exibirDetalhes() {
    return "$titulo - $autor ($ano)";
  }
}

class Contador {
  int valor = 0;

  void incrementar() {
    valor++;
  }
}

class Aluno {
  String nome;
  String matricula;

  Aluno(this.nome, this.matricula);

  Aluno.semMatricula(this.nome)
      : matricula = "Sem matrícula";
}

class ProdutoClasse {
  String nome;
  double preco;

  ProdutoClasse(this.nome, [this.preco = 0]);
}

class Veiculo {
  String marca;
  int velocidade;

  Veiculo(this.marca, this.velocidade);
}

class Carro extends Veiculo {
  int portas;

  Carro(
      String marca,
      int velocidade,
      this.portas)
      : super(marca, velocidade);
}

class Animal {
  String emitirSom() {
    return "Som";
  }
}

class Gato extends Animal {
  @override
  String emitirSom() {
    return "Miau";
  }
}

abstract class Forma {
  double calcularArea();
}

class Quadrado extends Forma {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

abstract class Notificacao {
  void enviar();
}

class Email extends Notificacao {
  @override
  void enviar() {
    print("Email enviado");
  }
}

class SMS extends Notificacao {
  @override
  void enviar() {
    print("SMS enviado");
  }
}

class ContaBancaria {
  double saldo = 0;

  void depositar(double valor) {
    saldo += valor;
    print("Depositado: $valor");
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Sacado: $valor");
    } else {
      print("Saldo insuficiente");
    }
  }
}

class Termometro {
  void ajustarTemperatura(double temp) {
    if (temp >= -50 && temp <= 100) {
      print("Temperatura ajustada para $temp");
    } else {
      print("Temperatura inválida");
    }
  }
}

class Retangulo {
  double _largura = 0;
  double _altura = 0;

  double get largura => _largura;
  double get altura => _altura;

  set largura(double valor) {
    _largura = valor;
  }

  set altura(double valor) {
    _altura = valor;
  }
}

class Usuario {
  String _email = "";

  String get email => _email;

  set email(String valor) {
    if (valor.contains("@")) {
      _email = valor;
    } else {
      print("Email inválido");
    }
  }
}

abstract class Autenticavel {
  bool autenticar(String senha);
}

class UsuarioAut implements Autenticavel {
  @override
  bool autenticar(String senha) {
    return senha == "1234";
  }
}

abstract class Calculavel {
  double calcular(double a, double b);
}

class Soma implements Calculavel {
  @override
  double calcular(double a, double b) {
    return a + b;
  }
}

abstract class Dispositivo {
  void ligar();
}

class Celular extends Dispositivo {
  @override
  void ligar() {
    print("Celular ligado");
  }
}

class Triangulo extends Forma {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return (base * altura) / 2;
  }
}