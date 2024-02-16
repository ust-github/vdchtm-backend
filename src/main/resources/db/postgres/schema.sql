DROP TABLE IF EXISTS vet_specialties;
DROP TABLE IF EXISTS vets;
DROP TABLE IF EXISTS specialties;
DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS types;
DROP TABLE IF EXISTS owners;

CREATE TABLE IF NOT EXISTS vets
(
    id         BIGINT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name  VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS specialties
(
    id   BIGINT PRIMARY KEY,
    name VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS vet_specialties
(
    vet_id       BIGINT NOT NULL,
    specialty_id BIGINT NOT NULL,
    constraint fk_vet_id FOREIGN KEY (vet_id) REFERENCES vets (id),
    constraint fk_speciality_id FOREIGN KEY (specialty_id) REFERENCES specialties (id)
);

CREATE TABLE IF NOT EXISTS types
(
    id   BIGINT PRIMARY KEY,
    name VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS owners
(
    id         BIGINT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name  VARCHAR(30),
    address    VARCHAR(255),
    city       VARCHAR(80),
    telephone  VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS pets
(
    id         BIGINT PRIMARY KEY,
    name       VARCHAR(30),
    birth_date DATE,
    type_id    BIGINT NOT NULL,
    owner_id   BIGINT NOT NULL,
    constraint fk_owner_id FOREIGN KEY (owner_id) REFERENCES owners (id),
    constraint fk_type_id FOREIGN KEY (type_id) REFERENCES types (id)
);

CREATE TABLE IF NOT EXISTS visits
(
    id          BIGINT PRIMARY KEY,
    pet_id      BIGINT NOT NULL,
    visit_date  DATE,
    description VARCHAR(255),
    constraint fk_pet_id FOREIGN KEY (pet_id) REFERENCES pets (id)
);
