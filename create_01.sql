
DROP TABLE SkRandomizzazione
go



DROP TABLE VisitaBasale
go



DROP TABLE VisitaFollowUp12
go



DROP TABLE Sperimentatori
go



DROP TABLE Pazienti
go



DROP TABLE VisitaFollowUp24
go



CREATE TABLE Pazienti
( 
	IdPaziente           char(8)  NOT NULL ,
	Cognome              varchar(50)  NULL ,
	Nome                 varchar(50)  NULL ,
	DataNascita          datetime  NULL ,
	Sex                  char(1)  NULL ,
	DataEvento           datetime  NULL ,
	DataScreening        datetime  NULL ,
	Telefono             varchar(20)  NULL ,
	NumeroCartella       varchar(20)  NULL ,
	CriterioInc18Anni    bit  NULL ,
	CrtierioIncSCAx      bit  NULL ,
	CriterioIncEmiliaRomagna bit  NULL ,
	CriterioEscAltriStudi bit  NULL ,
	CriterioEscNoConsenso bit  NULL ,
	CriterioEscNoPartecipazione bit  NULL 
)
go



ALTER TABLE Pazienti
	ADD CONSTRAINT XPKPazienti PRIMARY KEY  CLUSTERED (IdPaziente ASC)
go



CREATE TABLE SkRandomizzazione
( 
	IdPaziente           char(8)  NOT NULL ,
	Consenso             bit  NULL ,
	Copia                bit  NULL ,
	BraccioSperimentale  bit  NULL ,
	BraccioControllo     bit  NULL ,
	LetteraMedicoCurante bit  NULL ,
	Data                 datetime  NULL ,
	IdMedico             char(18)  NULL 
)
go



ALTER TABLE SkRandomizzazione
	ADD CONSTRAINT XPKSkRandomizzazione PRIMARY KEY  CLUSTERED (IdPaziente ASC)
go



CREATE TABLE Sperimentatori
( 
	IdMedico             char(18)  NOT NULL ,
	Cognome              varchar(50)  NULL ,
	Nome                 varchar(50)  NULL 
)
go



ALTER TABLE Sperimentatori
	ADD CONSTRAINT XPKSperimentatori PRIMARY KEY  CLUSTERED (IdMedico ASC)
go



CREATE TABLE VisitaBasale
( 
	Data                 datetime  NULL ,
	FamiliaritaCardio    bit  NULL ,
	Ipertensione         bit  NULL ,
	Dislipidemia         bit  NULL ,
	DiabeteMellito       bit  NULL ,
	Fumatore             tinyint  NULL ,
	Obesita              bit  NULL ,
	Peso                 float  NULL ,
	Altezza              float  NULL ,
	VasculopatiaPeriferica bit  NULL ,
	IMA                  bit  NULL ,
	PCI                  char(18)  NULL ,
	CABG                 bit  NULL ,
	ScompensoCardiaco    bit  NULL ,
	NYHA                 tinyint  NULL ,
	FAPermanente         bit  NULL ,
	Emorragia            bit  NULL ,
	MalattieCerebrovascolari bit  NULL ,
	Anemia               bit  NULL ,
	PatologiaTumoraleInAtto bit  NULL ,
	InsufficienzaRenaleCronica tinyint  NULL ,
	SCA_UA               bit  NULL ,
	SCA_NSTEMI           bit  NULL ,
	SCA_STEMI            bit  NULL ,
	Sede                 varchar(20)  NULL ,
	CoronarografiaEseguita bit  NULL ,
	CoronarografiaVariMalati tinyint  NULL ,
	CoronarografiaTC     bit  NULL ,
	CoronarografiaDettaglioEsito varchar(max)  NULL ,
	PciEseguita          bit  NULL ,
	PciVasiTrattati      bit  NULL ,
	PciTC                bit  NULL ,
	PciDettaglioEsito    varchar(max)  NULL ,
	PtcaProgrammata      bit  NULL ,
	PtcaSede             varchar(20)  NULL ,
	PtcaContinuita       bit  NULL ,
	PtcaData             datetime  NULL ,
	PtcaPrevScintigrafia bit  NULL ,
	EcgReferto           varchar(max)  NULL ,
	CirconferenzaAddominale tinyint  NULL ,
	Pas                  int  NULL ,
	Pad                  int  NULL ,
	Emoglobina           float  NULL ,
	ColesteroloTotale    float  NULL ,
	cHDL                 float  NULL ,
	cLDL                 float  NULL ,
	Trigliceridi         float  NULL ,
	Fumo                 bit  NULL ,
	IdPaziente           char(8)  NOT NULL ,
	AttivitaSportiva     tinyint  NULL ,
	AttivitaFisicaAbituale tinyint  NULL ,
	SedenterietaQuotidiana tinyint  NULL ,
	AbitudiniDietetichePesce tinyint  NULL ,
	AbitudiniDieteticheFrutta tinyint  NULL ,
	AbitudiniDieteticheVerdura tinyint  NULL ,
	ASA                  bit  NULL ,
	SecondoAntiaggregante bit  NULL ,
	SecondoAntiaggreganteNome varchar(100)  NULL ,
	ACE                  bit  NULL ,
	BetaBloccante        bit  NULL ,
	Statina              bit  NULL ,
	DataProssimaVisita   datetime  NULL ,
	IdMedico             char(18)  NULL 
)
go



ALTER TABLE VisitaBasale
	ADD CONSTRAINT XPKPazienti PRIMARY KEY  CLUSTERED (IdPaziente ASC)
go



CREATE TABLE VisitaFollowUp12
( 
	Data                 datetime  NULL ,
	EcgReferto           varchar(max)  NULL ,
	CirconferenzaAddominale tinyint  NULL ,
	Pas                  int  NULL ,
	Pad                  int  NULL ,
	SegniCliniciScompenso bit  NULL ,
	Angina               bit  NULL ,
	ASA                  bit  NULL ,
	SecondoAntiaggregante bit  NULL ,
	SecondoAntiaggreganteNome varchar(100)  NULL ,
	ACE                  bit  NULL ,
	BetaBloccante        bit  NULL ,
	Statina              bit  NULL ,
	DataProssimaVisita   datetime  NULL ,
	IdMedico             char(18)  NULL ,
	IdPaziente           char(8)  NOT NULL ,
	Mace                 bit  NULL ,
	MaceMorte            bit  NULL ,
	MaceMorteData1       datetime  NULL ,
	MaceMorteData2       datetime  NULL ,
	MaceReinfarto        bit  NULL ,
	MaceReinfartoData1   datetime  NULL ,
	MaceReinfartoData2   datetime  NULL ,
	MaceStroke           bit  NULL ,
	MaceStrokeData1      datetime  NULL ,
	MaceStrokeData2      datetime  NULL ,
	DataEvento           datetime  NULL ,
	MorteCausaCardiovascolare bit  NULL ,
	Ospedalizzato        bit  NULL ,
	MotivoScompensoCardiaco bit  NULL ,
	MotivoAritmie        bit  NULL ,
	MotivoCauseInfettive bit  NULL ,
	MotivoCauseOncologicheEmatologiche bit  NULL ,
	MotivoCauseTraumatiche bit  NULL ,
	MotivoProceduraStageRivascolarizzazione bit  NULL ,
	MotivoAltro          bit  NULL ,
	MotivoAltroDettaglio varchar(max)  NULL ,
	DataOspedalizzato    datetime  NULL ,
	Complicanze          tinyint  NULL ,
	MisuraComplicanze    tinyint  NULL ,
	ModificheTerapeutiche varchar(max)  NULL 
)
go



ALTER TABLE VisitaFollowUp12
	ADD CONSTRAINT XPKPazienti PRIMARY KEY  CLUSTERED (IdPaziente ASC)
go



CREATE TABLE VisitaFollowUp24
( 
	Data                 datetime  NULL ,
	CirconferenzaAddominale tinyint  NULL ,
	Pas                  int  NULL ,
	Pad                  int  NULL ,
	Emoglobina           float  NULL ,
	ColesteroloTotale    float  NULL ,
	cHDL                 float  NULL ,
	cLDL                 float  NULL ,
	Trigliceridi         float  NULL ,
	Fumo                 bit  NULL ,
	IdPaziente           char(8)  NOT NULL ,
	AttivitaSportiva     tinyint  NULL ,
	AttivitaFisicaAbituale tinyint  NULL ,
	SedenterietaQuotidiana tinyint  NULL ,
	AbitudiniDietetichePesce tinyint  NULL ,
	AbitudiniDieteticheFrutta tinyint  NULL ,
	AbitudiniDieteticheVerdura tinyint  NULL ,
	ASA                  bit  NULL ,
	SecondoAntiaggregante bit  NULL ,
	SecondoAntiaggreganteNome varchar(100)  NULL ,
	ACE                  bit  NULL ,
	BetaBloccante        bit  NULL ,
	Statina              bit  NULL ,
	DataProssimaVisita   datetime  NULL ,
	IdMedico             char(18)  NULL ,
	EcgReferto           varchar(max)  NULL ,
	Mace                 bit  NULL 
)
go



ALTER TABLE VisitaFollowUp24
	ADD CONSTRAINT XPKPazienti PRIMARY KEY  CLUSTERED (IdPaziente ASC)
go




ALTER TABLE SkRandomizzazione
	ADD CONSTRAINT R_1 FOREIGN KEY (IdPaziente) REFERENCES Pazienti(IdPaziente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE SkRandomizzazione
	ADD CONSTRAINT R_3 FOREIGN KEY (IdMedico) REFERENCES Sperimentatori(IdMedico)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VisitaBasale
	ADD CONSTRAINT R_4 FOREIGN KEY (IdPaziente) REFERENCES Pazienti(IdPaziente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VisitaBasale
	ADD CONSTRAINT R_5 FOREIGN KEY (IdMedico) REFERENCES Sperimentatori(IdMedico)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VisitaFollowUp12
	ADD CONSTRAINT R_6 FOREIGN KEY (IdPaziente) REFERENCES Pazienti(IdPaziente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE VisitaFollowUp12
	ADD CONSTRAINT R_7 FOREIGN KEY (IdMedico) REFERENCES Sperimentatori(IdMedico)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




CREATE TRIGGER tD_Pazienti ON Pazienti FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Pazienti */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Pazienti  SkRandomizzazione on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002f62e", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="IdPaziente" */
    IF EXISTS (
      SELECT * FROM deleted,SkRandomizzazione
      WHERE
        /*  %JoinFKPK(SkRandomizzazione,deleted," = "," AND") */
        SkRandomizzazione.IdPaziente = deleted.IdPaziente
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Pazienti because SkRandomizzazione exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Pazienti  VisitaBasale on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="IdPaziente" */
    IF EXISTS (
      SELECT * FROM deleted,VisitaBasale
      WHERE
        /*  %JoinFKPK(VisitaBasale,deleted," = "," AND") */
        VisitaBasale.IdPaziente = deleted.IdPaziente
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Pazienti because VisitaBasale exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Pazienti  VisitaFollowUp12 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="IdPaziente" */
    IF EXISTS (
      SELECT * FROM deleted,VisitaFollowUp12
      WHERE
        /*  %JoinFKPK(VisitaFollowUp12,deleted," = "," AND") */
        VisitaFollowUp12.IdPaziente = deleted.IdPaziente
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Pazienti because VisitaFollowUp12 exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Pazienti ON Pazienti FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Pazienti */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdPaziente char(8),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Pazienti  SkRandomizzazione on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000335b7", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="IdPaziente" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(IdPaziente)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,SkRandomizzazione
      WHERE
        /*  %JoinFKPK(SkRandomizzazione,deleted," = "," AND") */
        SkRandomizzazione.IdPaziente = deleted.IdPaziente
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Pazienti because SkRandomizzazione exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Pazienti  VisitaBasale on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="IdPaziente" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(IdPaziente)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VisitaBasale
      WHERE
        /*  %JoinFKPK(VisitaBasale,deleted," = "," AND") */
        VisitaBasale.IdPaziente = deleted.IdPaziente
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Pazienti because VisitaBasale exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Pazienti  VisitaFollowUp12 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="IdPaziente" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(IdPaziente)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VisitaFollowUp12
      WHERE
        /*  %JoinFKPK(VisitaFollowUp12,deleted," = "," AND") */
        VisitaFollowUp12.IdPaziente = deleted.IdPaziente
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Pazienti because VisitaFollowUp12 exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_SkRandomizzazione ON SkRandomizzazione FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on SkRandomizzazione */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Pazienti  SkRandomizzazione on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002ab45", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="IdPaziente" */
    IF EXISTS (SELECT * FROM deleted,Pazienti
      WHERE
        /* %JoinFKPK(deleted,Pazienti," = "," AND") */
        deleted.IdPaziente = Pazienti.IdPaziente AND
        NOT EXISTS (
          SELECT * FROM SkRandomizzazione
          WHERE
            /* %JoinFKPK(SkRandomizzazione,Pazienti," = "," AND") */
            SkRandomizzazione.IdPaziente = Pazienti.IdPaziente
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last SkRandomizzazione because Pazienti exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Sperimentatori  SkRandomizzazione on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="IdMedico" */
    IF EXISTS (SELECT * FROM deleted,Sperimentatori
      WHERE
        /* %JoinFKPK(deleted,Sperimentatori," = "," AND") */
        deleted.IdMedico = Sperimentatori.IdMedico AND
        NOT EXISTS (
          SELECT * FROM SkRandomizzazione
          WHERE
            /* %JoinFKPK(SkRandomizzazione,Sperimentatori," = "," AND") */
            SkRandomizzazione.IdMedico = Sperimentatori.IdMedico
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last SkRandomizzazione because Sperimentatori exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_SkRandomizzazione ON SkRandomizzazione FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on SkRandomizzazione */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdPaziente char(8),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Pazienti  SkRandomizzazione on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002d025", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="IdPaziente" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(IdPaziente)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Pazienti
        WHERE
          /* %JoinFKPK(inserted,Pazienti) */
          inserted.IdPaziente = Pazienti.IdPaziente
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update SkRandomizzazione because Pazienti does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Sperimentatori  SkRandomizzazione on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="IdMedico" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(IdMedico)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sperimentatori
        WHERE
          /* %JoinFKPK(inserted,Sperimentatori) */
          inserted.IdMedico = Sperimentatori.IdMedico
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.IdMedico IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update SkRandomizzazione because Sperimentatori does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Sperimentatori ON Sperimentatori FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Sperimentatori */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Sperimentatori  SkRandomizzazione on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000305bb", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="IdMedico" */
    IF EXISTS (
      SELECT * FROM deleted,SkRandomizzazione
      WHERE
        /*  %JoinFKPK(SkRandomizzazione,deleted," = "," AND") */
        SkRandomizzazione.IdMedico = deleted.IdMedico
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sperimentatori because SkRandomizzazione exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Sperimentatori  VisitaBasale on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="IdMedico" */
    IF EXISTS (
      SELECT * FROM deleted,VisitaBasale
      WHERE
        /*  %JoinFKPK(VisitaBasale,deleted," = "," AND") */
        VisitaBasale.IdMedico = deleted.IdMedico
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sperimentatori because VisitaBasale exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Sperimentatori  VisitaFollowUp12 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="IdMedico" */
    IF EXISTS (
      SELECT * FROM deleted,VisitaFollowUp12
      WHERE
        /*  %JoinFKPK(VisitaFollowUp12,deleted," = "," AND") */
        VisitaFollowUp12.IdMedico = deleted.IdMedico
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sperimentatori because VisitaFollowUp12 exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Sperimentatori ON Sperimentatori FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Sperimentatori */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdMedico char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Sperimentatori  SkRandomizzazione on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00035545", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="SkRandomizzazione"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="IdMedico" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(IdMedico)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,SkRandomizzazione
      WHERE
        /*  %JoinFKPK(SkRandomizzazione,deleted," = "," AND") */
        SkRandomizzazione.IdMedico = deleted.IdMedico
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sperimentatori because SkRandomizzazione exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Sperimentatori  VisitaBasale on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="IdMedico" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(IdMedico)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VisitaBasale
      WHERE
        /*  %JoinFKPK(VisitaBasale,deleted," = "," AND") */
        VisitaBasale.IdMedico = deleted.IdMedico
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sperimentatori because VisitaBasale exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Sperimentatori  VisitaFollowUp12 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="IdMedico" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(IdMedico)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VisitaFollowUp12
      WHERE
        /*  %JoinFKPK(VisitaFollowUp12,deleted," = "," AND") */
        VisitaFollowUp12.IdMedico = deleted.IdMedico
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sperimentatori because VisitaFollowUp12 exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_VisitaBasale ON VisitaBasale FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on VisitaBasale */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Pazienti  VisitaBasale on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028790", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="IdPaziente" */
    IF EXISTS (SELECT * FROM deleted,Pazienti
      WHERE
        /* %JoinFKPK(deleted,Pazienti," = "," AND") */
        deleted.IdPaziente = Pazienti.IdPaziente AND
        NOT EXISTS (
          SELECT * FROM VisitaBasale
          WHERE
            /* %JoinFKPK(VisitaBasale,Pazienti," = "," AND") */
            VisitaBasale.IdPaziente = Pazienti.IdPaziente
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VisitaBasale because Pazienti exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Sperimentatori  VisitaBasale on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="IdMedico" */
    IF EXISTS (SELECT * FROM deleted,Sperimentatori
      WHERE
        /* %JoinFKPK(deleted,Sperimentatori," = "," AND") */
        deleted.IdMedico = Sperimentatori.IdMedico AND
        NOT EXISTS (
          SELECT * FROM VisitaBasale
          WHERE
            /* %JoinFKPK(VisitaBasale,Sperimentatori," = "," AND") */
            VisitaBasale.IdMedico = Sperimentatori.IdMedico
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VisitaBasale because Sperimentatori exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_VisitaBasale ON VisitaBasale FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on VisitaBasale */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdPaziente char(8),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Pazienti  VisitaBasale on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c55e", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="IdPaziente" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(IdPaziente)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Pazienti
        WHERE
          /* %JoinFKPK(inserted,Pazienti) */
          inserted.IdPaziente = Pazienti.IdPaziente
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VisitaBasale because Pazienti does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Sperimentatori  VisitaBasale on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaBasale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_5", FK_COLUMNS="IdMedico" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(IdMedico)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sperimentatori
        WHERE
          /* %JoinFKPK(inserted,Sperimentatori) */
          inserted.IdMedico = Sperimentatori.IdMedico
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.IdMedico IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VisitaBasale because Sperimentatori does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_VisitaFollowUp12 ON VisitaFollowUp12 FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on VisitaFollowUp12 */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Pazienti  VisitaFollowUp12 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00027f8f", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="IdPaziente" */
    IF EXISTS (SELECT * FROM deleted,Pazienti
      WHERE
        /* %JoinFKPK(deleted,Pazienti," = "," AND") */
        deleted.IdPaziente = Pazienti.IdPaziente AND
        NOT EXISTS (
          SELECT * FROM VisitaFollowUp12
          WHERE
            /* %JoinFKPK(VisitaFollowUp12,Pazienti," = "," AND") */
            VisitaFollowUp12.IdPaziente = Pazienti.IdPaziente
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VisitaFollowUp12 because Pazienti exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Sperimentatori  VisitaFollowUp12 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="IdMedico" */
    IF EXISTS (SELECT * FROM deleted,Sperimentatori
      WHERE
        /* %JoinFKPK(deleted,Sperimentatori," = "," AND") */
        deleted.IdMedico = Sperimentatori.IdMedico AND
        NOT EXISTS (
          SELECT * FROM VisitaFollowUp12
          WHERE
            /* %JoinFKPK(VisitaFollowUp12,Sperimentatori," = "," AND") */
            VisitaFollowUp12.IdMedico = Sperimentatori.IdMedico
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VisitaFollowUp12 because Sperimentatori exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_VisitaFollowUp12 ON VisitaFollowUp12 FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on VisitaFollowUp12 */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insIdPaziente char(8),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Pazienti  VisitaFollowUp12 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c4d0", PARENT_OWNER="", PARENT_TABLE="Pazienti"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="IdPaziente" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(IdPaziente)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Pazienti
        WHERE
          /* %JoinFKPK(inserted,Pazienti) */
          inserted.IdPaziente = Pazienti.IdPaziente
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VisitaFollowUp12 because Pazienti does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Sperimentatori  VisitaFollowUp12 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Sperimentatori"
    CHILD_OWNER="", CHILD_TABLE="VisitaFollowUp12"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="IdMedico" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(IdMedico)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sperimentatori
        WHERE
          /* %JoinFKPK(inserted,Sperimentatori) */
          inserted.IdMedico = Sperimentatori.IdMedico
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.IdMedico IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VisitaFollowUp12 because Sperimentatori does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


