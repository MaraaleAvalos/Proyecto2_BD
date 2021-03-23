--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      UNAM
-- Project :      MODELO_SUBASTAS.DM1
-- Author :       maraale.xoxo@hotmail.com
--
-- Date Created : Thursday, February 04, 2021 22:53:55
-- Target DBMS : Oracle 11g
--

-- 
-- TABLE: AUTOS 
--

CREATE TABLE AUTOS(
    objeto_id    NUMBER(10, 0)    NOT NULL,
    año          NUMBER(10, 0)    NOT NULL,
    marca_id     NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY (objeto_id)
)
;



-- 
-- TABLE: BANCO 
--

CREATE TABLE BANCO(
    banco_id        NUMBER(10, 0)    NOT NULL,
    clave_banco     VARCHAR2(10)     NOT NULL,
    nombre_banco    VARCHAR2(30)     NOT NULL,
    descripcion     VARCHAR2(100),
    CONSTRAINT PK21 PRIMARY KEY (banco_id)
)
;



-- 
-- TABLE: CASAS 
--

CREATE TABLE CASAS(
    objeto_id    NUMBER(10, 0)    NOT NULL,
    longitud     VARCHAR2(15)     NOT NULL,
    latitud      VARCHAR2(15)     NOT NULL,
    direccion    VARCHAR2(100)    NOT NULL,
    descri       VARCHAR2(100)    NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY (objeto_id)
)
;



-- 
-- TABLE: COMPRA_OFERTA 
--

CREATE TABLE COMPRA_OFERTA(
    compra_oferta_id    NUMBER(10, 0)    NOT NULL,
    compradores_id      NUMBER(10, 0)    NOT NULL,
    ofertas_id          NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK19 PRIMARY KEY (compra_oferta_id)
)
;



-- 
-- TABLE: COMPRADORES 
--

CREATE TABLE COMPRADORES(
    compradores_id    NUMBER(10, 0)    NOT NULL,
    comision          NUMBER(10, 0),
    aval_id           NUMBER(10, 0),
    foto              BLOB             NOT NULL,
    texto_reseña      VARCHAR2(100)    NOT NULL,
    nombre            VARCHAR2(15)     NOT NULL,
    apellidos         VARCHAR2(15)     NOT NULL,
    correo            VARCHAR2(30)     NOT NULL,
    estado            VARCHAR2(15)     NOT NULL,
    usuario           VARCHAR2(10)     NOT NULL,
    password          VARCHAR2(15)     NOT NULL,
    pais_id           NUMBER(10, 0)    NOT NULL,
    datos_id          NUMBER(10, 0)    NOT NULL,
    factura_id        NUMBER(10, 0)    NOT NULL,
    objeto_id         NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK16 PRIMARY KEY (compradores_id)
)
;



-- 
-- TABLE: DATOS 
--

CREATE TABLE DATOS(
    datos_id          NUMBER(10, 0)    NOT NULL,
    RFC               VARCHAR2(20)     NOT NULL,
    clabe             VARCHAR2(10)     NOT NULL,
    tipo_tarjeta      VARCHAR2(15),
    numero_tarjeta    VARCHAR2(20),
    año_tarjeta       NUMBER(10, 0),
    mes_tarjeta       NUMBER(10, 0),
    banco_id          NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK20 PRIMARY KEY (datos_id)
)
;



-- 
-- TABLE: FACTURA 
--

CREATE TABLE FACTURA(
    factura_id          NUMBER(10, 0)    NOT NULL,
    folio               VARCHAR2(15)     NOT NULL,
    fecha_generacion    DATE             NOT NULL,
    monto_total         NUMBER(10, 0)    NOT NULL,
    IVA                 NUMBER(10, 0)    NOT NULL,
    objeto_id           NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK22 PRIMARY KEY (factura_id)
)
;



-- 
-- TABLE: HACIENDA 
--

CREATE TABLE HACIENDA(
    objeto_id               NUMBER(10, 0)    NOT NULL,
    nombre_hacienda         VARCHAR2(20)     NOT NULL,
    extension_km            VARCHAR2(10)     NOT NULL,
    direccion_hacienda      VARCHAR2(100)    NOT NULL,
    lista_actividades_id    NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY (objeto_id)
)
;



-- 
-- TABLE: HISTÓRICO_STATUS_OBJETO 
--

CREATE TABLE HISTÓRICO_STATUS_OBJETO(
    hist_status_obj_id    NUMBER(10, 0)    NOT NULL,
    fecha                 DATE             NOT NULL,
    status_objeto_id      NUMBER(10, 0)    NOT NULL,
    objeto_id             NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (hist_status_obj_id)
)
;



-- 
-- TABLE: LISTA_ACTIVIDADES 
--

CREATE TABLE LISTA_ACTIVIDADES(
    lista_actividades_id    NUMBER(10, 0)    NOT NULL,
    nombre                  VARCHAR2(15)     NOT NULL,
    clave                   VARCHAR2(10)     NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY (lista_actividades_id)
)
;



-- 
-- TABLE: MARCA 
--

CREATE TABLE MARCA(
    marca_id     NUMBER(10, 0)    NOT NULL,
    nombre       VARCHAR2(10)     NOT NULL,
    modelo_id    NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY (marca_id)
)
;



-- 
-- TABLE: MODELOS 
--

CREATE TABLE MODELOS(
    modelo_id          NUMBER(10, 0)    NOT NULL,
    nombre_modelo      VARCHAR2(10)     NOT NULL,
    numero_cilidros    NUMBER(10, 0)    NOT NULL,
    numero_serie       NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK8 PRIMARY KEY (modelo_id)
)
;



-- 
-- TABLE: OBJETO 
--

CREATE TABLE OBJETO(
    objeto_id           NUMBER(10, 0)    NOT NULL,
    es_auto             NUMBER(1, 0)     NOT NULL,
    es_casa             NUMBER(1, 0)     NOT NULL,
    es_hacienda         NUMBER(1, 0)     NOT NULL,
    codigo_barras       VARCHAR2(10)     NOT NULL,
    nombre              VARCHAR2(30)     NOT NULL,
    descripcion         VARCHAR2(100)    NOT NULL,
    precio_inicial      NUMBER(10, 0)    NOT NULL,
    foto                BLOB             NOT NULL,
    status_objeto_id    NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY (objeto_id)
)
;



-- 
-- TABLE: OFERTAS 
--

CREATE TABLE OFERTAS(
    ofertas_id          NUMBER(10, 0)    NOT NULL,
    fecha               DATE             NOT NULL,
    hora                TIMESTAMP(6)     NOT NULL,
    oferta_economica    NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK18 PRIMARY KEY (ofertas_id)
)
;



-- 
-- TABLE: PAÍSES 
--

CREATE TABLE PAÍSES(
    pais_id    NUMBER(10, 0)    NOT NULL,
    clave      VARCHAR2(10)     NOT NULL,
    nombre     VARCHAR2(15)     NOT NULL,
    CONSTRAINT PK17 PRIMARY KEY (pais_id)
)
;



-- 
-- TABLE: STATUS_OBJETO 
--

CREATE TABLE STATUS_OBJETO(
    status_objeto_id    NUMBER(10, 0)    NOT NULL,
    estado              VARCHAR2(30)     NOT NULL,
    descripcion         VARCHAR2(100)    NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY (status_objeto_id)
)
;



-- 
-- TABLE: SUBASTAS 
--

CREATE TABLE SUBASTAS(
    subasta_id            NUMBER(10, 0)    NOT NULL,
    fecha                 DATE             NOT NULL,
    hora                  TIMESTAMP(6)     NOT NULL,
    direccion_internet    VARCHAR2(30)     NOT NULL,
    cifra_esperada        NUMBER(10, 0)    NOT NULL,
    total_recaudado       NUMBER(10, 0)    NOT NULL,
    objeto_id             NUMBER(10, 0)    NOT NULL,
    compradores_id        NUMBER(10, 0)    NOT NULL,
    CONSTRAINT PK15 PRIMARY KEY (subasta_id)
)
;



-- 
-- TABLE: AUTOS 
--

ALTER TABLE AUTOS ADD CONSTRAINT RefOBJETO9 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;

ALTER TABLE AUTOS ADD CONSTRAINT RefMARCA31 
    FOREIGN KEY (marca_id)
    REFERENCES MARCA(marca_id)
;


-- 
-- TABLE: CASAS 
--

ALTER TABLE CASAS ADD CONSTRAINT RefOBJETO6 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;


-- 
-- TABLE: COMPRA_OFERTA 
--

ALTER TABLE COMPRA_OFERTA ADD CONSTRAINT RefCOMPRADORES34 
    FOREIGN KEY (compradores_id)
    REFERENCES COMPRADORES(compradores_id)
;

ALTER TABLE COMPRA_OFERTA ADD CONSTRAINT RefOFERTAS35 
    FOREIGN KEY (ofertas_id)
    REFERENCES OFERTAS(ofertas_id)
;


-- 
-- TABLE: COMPRADORES 
--

ALTER TABLE COMPRADORES ADD CONSTRAINT RefCOMPRADORES46 
    FOREIGN KEY (aval_id)
    REFERENCES COMPRADORES(compradores_id)
;

ALTER TABLE COMPRADORES ADD CONSTRAINT RefOBJETO47 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;

ALTER TABLE COMPRADORES ADD CONSTRAINT RefPAÍSES33 
    FOREIGN KEY (pais_id)
    REFERENCES PAÍSES(pais_id)
;

ALTER TABLE COMPRADORES ADD CONSTRAINT RefDATOS37 
    FOREIGN KEY (datos_id)
    REFERENCES DATOS(datos_id)
;

ALTER TABLE COMPRADORES ADD CONSTRAINT RefFACTURA38 
    FOREIGN KEY (factura_id)
    REFERENCES FACTURA(factura_id)
;


-- 
-- TABLE: DATOS 
--

ALTER TABLE DATOS ADD CONSTRAINT RefBANCO36 
    FOREIGN KEY (banco_id)
    REFERENCES BANCO(banco_id)
;


-- 
-- TABLE: FACTURA 
--

ALTER TABLE FACTURA ADD CONSTRAINT RefOBJETO39 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;


-- 
-- TABLE: HACIENDA 
--

ALTER TABLE HACIENDA ADD CONSTRAINT RefOBJETO10 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;

ALTER TABLE HACIENDA ADD CONSTRAINT RefLISTA_ACTIVIDADES22 
    FOREIGN KEY (lista_actividades_id)
    REFERENCES LISTA_ACTIVIDADES(lista_actividades_id)
;


-- 
-- TABLE: HISTÓRICO_STATUS_OBJETO 
--

ALTER TABLE HISTÓRICO_STATUS_OBJETO ADD CONSTRAINT RefSTATUS_OBJETO4 
    FOREIGN KEY (status_objeto_id)
    REFERENCES STATUS_OBJETO(status_objeto_id)
;

ALTER TABLE HISTÓRICO_STATUS_OBJETO ADD CONSTRAINT RefOBJETO30 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;


-- 
-- TABLE: MARCA 
--

ALTER TABLE MARCA ADD CONSTRAINT RefMODELOS42 
    FOREIGN KEY (modelo_id)
    REFERENCES MODELOS(modelo_id)
;


-- 
-- TABLE: OBJETO 
--

ALTER TABLE OBJETO ADD CONSTRAINT RefSTATUS_OBJETO3 
    FOREIGN KEY (status_objeto_id)
    REFERENCES STATUS_OBJETO(status_objeto_id)
;


-- 
-- TABLE: SUBASTAS 
--

ALTER TABLE SUBASTAS ADD CONSTRAINT RefOBJETO32 
    FOREIGN KEY (objeto_id)
    REFERENCES OBJETO(objeto_id)
;

ALTER TABLE SUBASTAS ADD CONSTRAINT RefCOMPRADORES40 
    FOREIGN KEY (compradores_id)
    REFERENCES COMPRADORES(compradores_id)
;

