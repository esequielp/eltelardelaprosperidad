Select
  telar.idtelar,
  telar.nombreTelar,
  telar.nivel As TipoMatriz,
  telar.fechaCreado,
  usuarios1.nombre As Administrador,
  usuarios.idusuario,
  usuarios.nombre,
  telarusuario.posicion,
  telarusuario.nivel,
  telarusuario.fechain,
  telarusuario.fechanivel1,
  telarusuario.fechanivel2,
  telarusuario.fechanivel3,
  telarusuario.fechanivel4
From
  usuarios Inner Join
  telarusuario
    On telarusuario.idusuario = usuarios.idusuario Inner Join
  telar
    On telarusuario.idtelar = telar.idtelar Inner Join
  usuarios usuarios1
    On telar.idadmin = usuarios1.idusuario
Order By
  telar.nombreTelar,
  telarusuario.posicion
