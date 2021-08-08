CREATE TABLE apartamento
    (
        id_apartamento SERIAL,
        matricula_apartamento VARCHAR,
        num_apartemento VARCHAR,
        bloque VARCHAR,
        coef_apartemento INTEGER
    )

CREATE TABLE propietario
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

CREATE TABLE parqueadero
    (
        id_parqueadero SERIAL,
        num_parqueader VARCHAR,
        matri_parqueadero BIGINT,
        coef_parqueadero FLOAT
    )

CREATE TABLE vehiculo
    (
        id_vehiculo SERIAL,
        tipo_vehiculo VARCHAR,
        placa SERIAL,
        modelo VARCHAR,
        marca VARCHAR,
        ID_RESIDENTE INTEGER,
        CONSTRAINT AK_vehiculo PRIMARY KEY (id_vehiculo),
        CONSTRAINT GK_AK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

CREATE TABLE mascota
    (
        id_mascot SERIAL,
        raza_mascota VARCHAR,
        nombre_mascota VARCHAR,
        vacuna_mascota VARCHAR,
        especie_mascota VARCHAR,
        id_residente INTEGER,
        CONSTRAINT PK_mascota PRIMARY KEY(id_mascota),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

INSERT INTO mascota (raza_mascota,nombre_mascota,vacuna_mascota,especie_mascota,id_residente) VALUES('mixta','nala','si','gata','1')

SELECT * FROM residente

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
    CONSTRAINT PK_residente PRIMARY KEY (id_residente)
)

    --Inserts (create)
INSERT INTO parqueadero
(num_parqueader, matri_parqueadero, coef_parqueadero) 
VALUES ('D10', '370568945', '12.48')

--Selects (Read)
SELECT num_parqueader FROM parqueadero
WHERE id_parqueadero= '1'

