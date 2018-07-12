
CREATE TABLE public.actividad (
    id_actividad integer NOT NULL,
    fecha date,
    descripcion text,
    tags character varying(100),
    id_usuario_registro integer,
    id_funcionario integer
);

CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(20)
);

CREATE TABLE public.evento (
    id_evento integer NOT NULL,
    fecha date,
    descripcion text,
    tema character varying(40),
    tags character varying(100),
    id_usuario_registro integer
);

CREATE TABLE public.funcionario (
    id_funcionario integer NOT NULL,
    nombre character varying(20),
    documento character varying(11),
    cargo character varying(24),
    edad character varying(2),
    periodo date,
    salario character varying(11)
);

CREATE TABLE public.presupuesto (
    id_presupuesto integer NOT NULL,
    valor_total integer,
    educacion integer,
    seguridad integer,
    salud integer,
    movilidad integer,
    infraestructura integer,
    otros integer,
    id_ciudad integer
);

CREATE TABLE public.rol (
    nombre character varying(20),
    nombre_usuario character varying(20),
    passwoord character varying(20),
    correo character varying(20),
    telefono character varying(11),
    id_rol integer NOT NULL,
    id_ciudad integer NOT NULL
);

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(20),
    nombre_usuario character varying(20),
    passwoord character varying(15),
    correo character varying(30),
    telefono character varying(11)
    id_rol integer,
    id_ciudad integer

);

 alter table usuario
 add constraint FK_usuario_rol
  foreign key (id_rol)
  references rol(id_rol);

  alter table usuario
  add constraint FK_usuario_ciudad
  foreign key (id_ciudad)
  references ciudad(id_ciudad);

  alter table evento 
  add constraint FK_evento_usuario
  foreign key (id_usuario_registro)
  references usuario(id_usuario);

  alter table actividad
  add constraint FK_actividad_usuario
  foreign key (id_usuario_registro)
  references usuario(id_usuario);

  alter table actividad 
  add constraint FK_actividad_funcionario
  foreign key (id_usuario_registro)
  references funcionario(id_funcionario);

  alter table presupuesto
  add constraint FK_presupuesto_ciudad
  foreign key (id_ciudad)
  references ciudad(id_ciudad);




