import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/domain/model/education_new.dart';

class EducationCube extends Cube {
  final listEducation = <EducationNew>[].obsValue;

  @override
  void onReady(Object? arguments) {
    listEducation.add(
      EducationNew(
        'Na pandemia, Renata triplicou a venda de seus produtos gastronômicos',
        'https://www.sebrae.com.br/Sebrae/Portal%20Sebrae/Sites%20Especiais/Cliente%20Sebrae/Artigos/Imagem%201/Imagem01-Renata%20Mandelli%20-%20Art%20&%20Food.png',
        'https://www.sebrae.com.br/sites/PortalSebrae/cliente%E2%80%93sebrae/na-pandemia-renata-triplicou-a-venda-de-seus-produtos-gastronomicos,ebd1716bfdd39710VgnVCM100000d701210aRCRD',
        'Ela conta com o apoio do Sebrae desde que se formalizou como MEI e diz que a parceria contribuiu para a estruturação e para o sucesso de seu negócio',
      ),
    );

    listEducation.add(
      EducationNew(
        'Reaproveitamento De Alimentos: Como Ele Pode Aumentar Seu Lucro',
        'https://alimentosjunior.com.br/wp-content/uploads/2020/01/reaproveitamento-de-alimentos.png',
        'https://alimentosjunior.com.br/2019/01/09/reaproveitamento-de-alimentos-como-ele-pode-aumentar-seu-lucro/',
        'É comum que muitas pessoas torçam o nariz e se posicionem de forma preconceituosa diante da palavra ‘restos’. Principalmente se ela for associada à ideia de reaproveitamento de alimentos.',
      ),
    );

    listEducation.add(
      EducationNew(
        'Aprenda 14 técnicas infalíveis de como encantar o cliente',
        'https://rockcontent.com/br/wp-content/uploads/sites/2/2020/11/como-encantar-o-cliente.jpg',
        'https://rockcontent.com/br/blog/como-encantar-o-cliente/',
        'Você sabe como encantar o cliente? Conquistar a atenção do consumidor ideal, criar um relacionamento, engajar e fechar negócio: todo esse processo pode ser potencializado com um bom trabalho no pós-venda, afinal, clientes encantados ajudam a divulgar a marca espontaneamente e são potenciais compradores.',
      ),
    );

    listEducation.add(
      EducationNew(
        'DICAS PARA TIRAR ÓTIMAS FOTOS DE PRODUTOS; PARA VENDER MAIS OU APRENDER UMA NOVA PROFISSÃO',
        'https://worldview.blog.br/wp-content/uploads/2021/04/Red-and-Black-Dark-Gamer-Sports-YouTube-Outro-24-1536x864.jpg',
        'https://worldview.blog.br/dicas-para-tirar-otimas-fotos-de-produtos/',
        'Com a pandemia, muitas pessoas tiveram que descobrir formas de vender através da internet. E para destacar produtos nesse universo online, contar com boas fotos é essencial.',
      ),
    );

    listEducation.add(
      EducationNew(
        '6 pontos para levar em conta sobre como escolher bons fornecedores',
        'https://www.paripassu.com.br/hubfs/Imported_Blog_Media/Capa-blog-Jan-20-2021-12-42-19-28-PM.jpg',
        'https://www.paripassu.com.br/blog/como-escolher-bons-fornecedores',
        'Com a pandemia, muitas pessoas tiveram que descobrir formas de vender através da internet. E para destacar produtos nesse universo online, contar com boas fotos é essencial.',
      ),
    );

    super.onReady(arguments);
  }
}
