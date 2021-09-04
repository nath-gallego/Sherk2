CREATE TABLE apartamento_
    (
        id_apartamento SERIAL,
        matricula_apartamento VARCHAR,
        num_apartamento VARCHAR,        
        bloque VARCHAR,
        coef_apartemento INTEGER
    )

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO aparta_mento
    (matricula_apartamento,  bloque, coef_apartemento)
    VALUES ('356284637293748502900003740002', 'C', '1232343')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO aparta_mento
    (matricula_apartamento, bloque, coef_apartemento)
    VALUES ('183940000364927400007364829000', 'B', '9624785')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO aparta_mento
    (matricula_apartamento, bloque, coef_apartemento)
    VALUES ('274937485020000046372849204704', 'C', '9732785')

    SELECT * FROM aparta_mento

CREATE TABLE propietario_
    (
        id_propietario SERIAL,
        tipo_id_propietario VARCHAR,
        num_identificacion VARCHAR,
        tel_propietario BIGINT,
        ocupacion VARCHAR,
        edad SMALLINT,
        nom_propietario VARCHAR,
        apel_propietario VARCHAR,
        vacuna BOOLEAN,
        razon_social VARCHAR,
        correo_propietario VARCHAR
    )

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO propie_tario
    (tipo_id_propietario, num_identificacion, tel_propietario, ocupacion, nom_propietario, apel_propietario, correo_propietario)
    VALUES ('cedula', '18937527', '3146537785', 'terapeuta', 'Jose Luis', 'Perez Rodriguez', 'Joselu.rope139@gmail.com')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO propie_tario
    (tipo_id_propietario, num_identificacion, tel_propietario, ocupacion, nom_propietario, apel_propietario, correo_propietario)
    VALUES ('cedula', '28563057', '3312787739', 'psicologa', 'Diana', 'Motato Suarez', 'diaaaa.s@gmail.com')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO propie_tario
    (tipo_id_propietario, num_identificacion, tel_propietario, ocupacion, nom_propietario, apel_propietario, correo_propietario)
    VALUES ('cedula', '31674839', '3136357792', 'desenpleado', 'Mario', 'Orozco ramirez', 'mariog@gmail.com')

    SELECT * FROM propie_tario

CREATE TABLE parqueadero_
    (
        id_parqueadero SERIAL,
        num_parqueadero VARCHAR,
        matri_parqueadero BIGINT,
        coef_parqueadero FLOAT
    )

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO parquea_dero
    ( matri_parqueadero, coef_parqueadero)
    VALUES ( '5354', '1232343')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO parquea_dero
    ( matri_parqueadero, coef_parqueadero)
    VALUES ( '8364', '1232343')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO parquea_dero
    ( matri_parqueadero, coef_parqueadero)
    VALUES ( '9374', '1232343')

    SELECT * FROM parquea_dero

CREATE TABLE vehiculo_
    (
        id_vehiculo SERIAL,
        tipo_vehiculo VARCHAR,
        placa VARCHAR,
        modelo VARCHAR,
        marca VARCHAR,
        id_residente INTEGER,
        CONSTRAINT AK_vehicu_lo PRIMARY KEY (id_vehiculo),
        CONSTRAINT GK_AK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO vehicu_lo
    (tipo_vehiculo, modelo, marca)
    VALUES('automovil', '2012','Honda')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO vehicu_lo
    (tipo_vehiculo, modelo, marca)
    VALUES('camioneta', '2005','Chevrolet')

-- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO vehicu_lo
    (tipo_vehiculo, modelo, marca)
    VALUES('camion', '2021','International')

    SELECT * FROM vehicu_lo

    CREATE TABLE residente
(
    id_residente SERIAL,
    nombre_residente VARCHAR,
    apellido_residente VARCHAR,
    edad INTEGER,
    religion VARCHAR,
    id_representante INTEGER,
    lugar_trabajo VARCHAR,
    EPS VARCHAR,
    tel_residente VARCHAR,
    vacuna VARCHAR,
    condicion_salud VARCHAR,
    correo_residente VARCHAR,
    estado_civil VARCHAR,
    CONSTRAINT PK_residente_ PRIMARY KEY (id_residente)
)

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO residen_te
        (nombre_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
        VALUES('Aurora', 'Garcia', '21', 'catolica', 'universidad', 'S.O.S', '3143664434', 'si', 'estable', 'aurogarcia154@gmail.com', 'comprometida');
        
        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO residen_te
        (nombre_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
        VALUES('diana', 'Hurtado', '32', 'catolica', 'valle del lili', 'coomeva', '31536665612', 'si', 'estable', 'hurtadia64322@gmail.com', 'soltera');
        
        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO residen_te
        (nombre_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
        VALUES('juan', 'Murcia', '29', 'evangelico', 'ingeniero', 'SURA', '3423422240', 'si', 'estable', 'murrrr2323@gmail.com', 'soltero');

        DELETED FROM residente WHERE id_residente = '1'

CREATE TABLE mascota_
    (
        id_mascota SERIAL,
        raza_mascota VARCHAR,
        nombre_mascota VARCHAR,
        vacuna_mascota VARCHAR,
        especie_mascota VARCHAR,
        id_residente INTEGER,
        CONSTRAINT PK_mascota_ PRIMARY KEY(id_mascota),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO masco_ta 
    (raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota) 
    VALUES('persa','tom','no','gato')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO masco_ta 
    (raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota) 
    VALUES('criolla','nala','si','gata')

    -- CRUD = (create, read, update, delete) patch
    --Insert (create)
    INSERT INTO masco_ta 
    (raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota) 
    VALUES('pomerania','lulu','si','perro')

    SELECT * FROM masco_ta
     DELETED FROM masco_ta WHERE id_masco_ta = '1'

CREATE TABLE visitante
(
    id_visitante SERIAL,
    parentesco VARCHAR,
    motivo_visitante VARCHAR,
    apartemento VARCHAR,
    edad_visitante SERIAL,
    nombre_visitante VARCHAR,
    numero_contacto_v VARCHAR,
    observaciones VARCHAR
)

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO visitante_
        (id_visitante, parentesco, motivo_visitante, apartemento, nombre_visitante, numero_contacto_v, observaciones)
        VALUES ('27264839', 'hermana', 'cuidar a su hemana enferma', '101', 'Marina Garces', '3146756692', 'ninguna')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO visitante_
        (id_visitante, parentesco, motivo_visitante, apartemento, nombre_visitante, numero_contacto_v, observaciones)
        VALUES ('174928830', 'hijo', 'visitar a su padre', '102', 'Juan Varona', '3136745529', 'ninguna')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO visitante_
        (id_visitante, parentesco, motivo_visitante, apartemento, nombre_visitante, numero_contacto_v, observaciones)
        VALUES ('274054849', 'hermano', 'visitar a su hermano', '103', 'David Ordoñez', '3372849930', 'ninguna')

        SELECT * FROM visitante_
        DELETED FROM residente WHERE id_residente = '1'

        CREATE TABLE aptoresidente
    (
        id_aptoresidente SERIAL,
        id_residente INTEGER,
        id_apartamento INTEGER
    )

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO aptoresidente
        (id_aptoresidente, id_residente, id_apartamento)
        VALUES ('18394583949', '18494628364', '195037469892')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO aptoresidente
        (id_aptoresidente, id_residente, id_apartamento)
        VALUES ('94637888209', '26384111173', '27493000037')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO aptoresidente
        (id_aptoresidente, id_residente, id_apartamento)
        VALUES ('27394585027', '83947583000', '27849300002')

        SELECT * FROM aptoresidente

CREATE TABLE aptopropietario
    (
        id_aptopropietario SERIAL,
        id_apartamento INTEGER,
        id_propietario INTEGER
    )

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO aptopropietario
        (id_aptopropietario , id_apartamento, id_propietario)
        VALUES ('38900004858', '7000098264', '17284238398')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO aptopropietario
        (id_aptopropietario , id_apartamento, id_propietario)
        VALUES ('82940003722', '72000027480', '92047500038')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO aptopropietario
        (id_aptopropietario , id_apartamento, id_propietario)
        VALUES ('82947689274', '27849203758', '28394500038')

        SELECT * FROM aptopropietario

CREATE TABLE parquepropietario
    (
        id_parquepropietario SERIAL,
        id_parqueadero INTEGER, 
        id_propietario INTEGER
    )
    -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO parquepropietario
        (id_parquepropietario, id_parqueadero, id_propietario)
        VALUES ('18383947263', '184740930009', '19503752740')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO parquepropietario
        (id_parquepropietario, id_parqueadero, id_propietario)
        VALUES ('61939472839', '27384000222', '73926480000')

        -- CRUD = (create, read, update, delete) patch
        --Insert (create)
        INSERT INTO parquepropietario
        (id_parquepropietario, id_parqueadero, id_propietario)
        VALUES ('26475900047', '69473000976', '173493000378')

        SELECT * FROM parquepropietario