<changeSet author="CHANGEME" id="CHANGEME">
<createTable tableName="estados">
  <column name="id_estado" type="INTEGER" autoIncrement="true">
    <constraints nullable="false"/>
  </column>
  <column name="estado" type="VARCHAR(250)">
    <constraints nullable="false"/>
  </column>
  <column name="iso_" type="VARCHAR(4)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="estados" constraintName="estados_PK" columnNames="id_estado"/>

<createTable tableName="pais">
  <column name="id" type="INTEGER" autoIncrement="true">
    <constraints nullable="false"/>
  </column>
  <column name="paisnombre" type="VARCHAR(250)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="pais" constraintName="pais_PK" columnNames="id"/>

<createTable tableName="ciudades">
  <column name="id_ciudad" type="INTEGER" autoIncrement="true">
    <constraints nullable="false"/>
  </column>
  <column name="id_estado" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="ciudad" type="VARCHAR(200)">
    <constraints nullable="false"/>
  </column>
  <column name="capital" type="BIT" defaultValue="0">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="ciudades" constraintName="ciudades_PK" columnNames="id_ciudad"/>

<createIndex tableName="ciudades" indexName="id_estado">
  <column name="id_estado"/>
</createIndex>

<createTable tableName="usuarios">
  <column name="idusuario" type="BIGINT" autoIncrement="true">
    <constraints nullable="false"/>
  </column>
  <column name="nombre" type="VARCHAR(200)">
    <constraints nullable="false"/>
  </column>
  <column name="email" type="VARCHAR(250)">
    <constraints nullable="false"/>
  </column>
  <column name="password" type="VARCHAR(50)">
    <constraints nullable="false"/>
  </column>
  <column name="direccion" type="VARCHAR(500)"/>
  <column name="idciudad" type="INTEGER"/>
</createTable>
<addPrimaryKey tableName="usuarios" constraintName="idusuarios_pk" columnNames="idusuario"/>
<createSequence sequenceName="usuarios_idusuario_seq"/>

<addForeignKeyConstraint baseTableName="ciudades" constraintName="ciudades_ibfk_1" baseColumnNames="id_estado" referencedTableName="estados" referencedColumnNames="id_estado" onDelete="CASCADE" onUpdate="CASCADE"/>
</changeSet>
