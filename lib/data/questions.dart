import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Quais os principais blocos de construção de uma UI em Flutter?',
    ['Widgets', 'Componentes', 'Blocos', 'Funções'],
  ),
  QuizQuestion('Como um app é construído em Flutter?', [
    'Combinando widgets em código',
    'Arrastando e soltando elementos',
    'Criando widgets nos arquivos de configuração',
    'Através de triggers e stored procedures em SQL',
  ]),
  QuizQuestion('Qual a função de um StatefulWidget?', [
    'Atualizar a UI quando houver mudança de dados',
    'Atualizar os dados quando houver mudança na UI',
    'Ignorar as mudanças de dados',
    'Renderizar telas que não dependem de dados',
  ]),
  QuizQuestion('Qual a função de um StatelessWidget?', [
    'Renderizar telas estáticas',
    'Atualizar a UI quando houver mudança de dados',
    'Atualizar os dados quando houver mudança na UI',
    'Ignorar as mudanças de dados',
  ]),
];
