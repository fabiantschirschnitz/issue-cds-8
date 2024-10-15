@cds.external        : true
@cds.persistence.skip: true
@Common.Label        : 'Open Items'
entity payint_s4hana.PI10_OpenItemsType {
      @Common.Label          : 'opbel'
      @Common.IsUpperCase    : true
      @Common.Heading        : 'Belegnummer'
      @Common.QuickInfo      : 'Nummer eines Belegs des Vertragskontokorrents'
  key opbel      : String(12) not null;

      @Common.IsDigitSequence: true
      @Common.Label          : 'Wiederholgsposition'
      @Common.Heading        : 'Wdh'
      @Common.QuickInfo      : 'Wiederholungsposition im Beleg des Vertragskontokorrents'
  key opupw      : String(3) not null;

      @Common.IsDigitSequence: true
      @Common.Label          : 'Position'
      @Common.Heading        : 'Pos'
      @Common.QuickInfo      : 'Positionsnummer im Beleg des Vertragskontokorrents'
  key opupk      : String(4) not null;

      @Common.IsDigitSequence: true
      @Common.Label          : 'Teilposition'
      @Common.Heading        : 'Tps'
      @Common.QuickInfo      : 'Teilposition zu einem Teilausgleich im Beleg'
  key opupz      : String(3) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Buchungskreis'
      @Common.Heading        : 'BuKr'
      bukrs      : String(4) not null;

      @Common.Label          : 'Vertragskonto'
      @Common.IsUpperCase    : true
      @Common.Heading        : 'Vertragskont'
      @Common.QuickInfo      : 'Vertragskontonummer'
      vkont      : String(12) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Anwendungsbereich'
      @Common.Heading        : 'AnwBer'
      applk      : String(1) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Hauptvorgang'
      @Common.Heading        : 'HVorg.'
      @Common.QuickInfo      : 'Hauptvorgang zur Belegposition'
      hvorg      : String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Teilvorgang'
      @Common.Heading        : 'TVorg.'
      @Common.QuickInfo      : 'Teilvorgang zur Belegposition'
      tvorg      : String(4) not null;

      @Common.Label          : 'Nettofälligkeit'
      @Common.Heading        : 'fällig'
      @Common.QuickInfo      : 'Nettofälligkeitsdatum'
      faedn      : Date;

      @Common.IsCurrency     : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Währung'
      @Common.Heading        : 'Währg'
      @Common.QuickInfo      : 'Transaktionswährung'
      waers      : String(3) not null;

      @Measures.ISOCurrency  : waers
      @Common.Label          : 'Betrag'
      @Common.QuickInfo      : 'Betrag in Transaktionswährung mit Vorzeichen'
      betrw      : Decimal (precision : 13) not null;

      @Common.Label          : 'Text'
      @Common.QuickInfo      : 'Text, 255 Zeichen'
      text       : String(255) not null;
      Parameters : Association to one payint_s4hana.PI10_OpenItems {};
};

@cds.external: true
type payint_s4hana.xDSCxPI_BTP_S_IDENTIFIER {
  IDENTIFIER_CODE : String(10) not null;
  VALUE           : String(30) not null;
};

@cds.external: true
type payint_s4hana.ContractAccountRetrieveAccountBalanceResult_Type {
  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Betrag'
  @Common.QuickInfo    : 'Betrag in Transaktionswährung mit Vorzeichen'
  AmountInTransactionCurrency    : Decimal (precision : 23) not null;

  @Common.Label        : 'Geschäftsbereich'
  BusinessArea                   : String(4) not null;

  @Common.Label        : 'Geschäftspartner'
  @Common.QuickInfo    : 'Geschäftspartnernummer'
  BusinessPartner                : String(10) not null;

  @Common.Label        : 'Kontierung'
  @Common.QuickInfo    : 'Kontierungsleiste für anwendungsspezifische Kontierungen'
  CAAccountAssignment            : String(50) not null;

  @Common.Label        : 'Kontierungstyp'
  @Common.Heading      : 'KT'
  @Common.QuickInfo    : 'Typ der Zusatzkontierung'
  CAAccountAssignmentCategory    : String(2) not null;

  @Common.Label        : 'Zusatzreferenz'
  @Common.QuickInfo    : 'Zusätzliche Referenzangabe'
  CAAdditionalContract           : String(20) not null;

  @Common.Label        : 'Adreßnr für Zahlung'
  @Common.QuickInfo    : 'Adressnummer des Zahlungsempfängers'
  CAAddressOfAltvBPForPayment    : String(10) not null;

  @Common.Label        : 'Partner für Zahlung'
  @Common.QuickInfo    : 'Abweichender Partner für Zahlungen'
  CAAltvBPForPayment             : String(10) not null;

  @Common.Label        : 'Bankverbindung'
  @Common.Heading      : 'BVID'
  @Common.QuickInfo    : 'Identifikation Bankverbindung des Zahlungsempfängers'
  CABankOfAltvBPForPayment       : String(4) not null;

  @Common.Label        : 'Position'
  @Common.Heading      : 'Pos'
  @Common.QuickInfo    : 'Positionsnummer im Beleg des Vertragskontokorrents'
  CABPItemNumber                 : String(4) not null;

  @Common.Label        : 'Text'
  @Common.QuickInfo    : 'Erklärender Text zur Position'
  CABPItemText                   : String(50) not null;

  @Common.Label        : 'Karten-ID'
  @Common.Heading      : 'CRDID'
  @Common.QuickInfo    : 'Abweichende Zahlungskarten-ID im Beleg'
  CACardOfAltvBPForPayment       : String(6) not null;

  @Common.Label        : 'Skontofälligkeit'
  @Common.Heading      : 'SkontofällD'
  @Common.QuickInfo    : 'Skontofälligkeitsdatum'
  CACashDiscountDueDate          : Date;

  @Common.Label        : 'Skontosatz'
  @Common.Heading      : 'Skonto'
  @Common.QuickInfo    : 'Skontoprozentsatz'
  CACashDiscountRate             : Decimal(5, 3) not null;

  @Common.Label        : 'Änderungssperre'
  @Common.Heading      : 'S'
  @Common.QuickInfo    : 'Druck erfolgt -  Änderung nicht möglich'
  CAChangeIsForbidden            : Boolean not null;

  @Common.Label        : 'Ausgleichsprüfung'
  @Common.Heading      : 'A'
  @Common.QuickInfo    : 'Ausgleich des Mustersatzes prüfen'
  CACheckSampleRecordIsCleared   : Boolean not null;

  @Common.Label        : 'Ordnungsbegriff'
  CAClassificationKey            : String(35) not null;

  @Common.IsCurrency   : true
  @Common.Label        : 'Ausgleichswährung'
  @Common.Heading      : 'AugWä'
  CAClearingCurrency             : String(3) not null;

  @Common.Label        : 'Ausgleichsdatum'
  @Common.Heading      : 'AusglDat'
  CAClearingDate                 : Date;

  @Common.Label        : 'Ausgleichsbeleg'
  @Common.Heading      : 'AusglBeleg'
  @Common.QuickInfo    : 'Ausgleichsbeleg oder Druckbeleg'
  CAClearingDocument             : String(12) not null;

  @Common.Label        : 'Buchgsdat.Ausgleich'
  @Common.Heading      : 'Budat.Ausg'
  @Common.QuickInfo    : 'Buchungsdatum des Ausgleichsbelegs'
  CAClearingDocumentPostingDate  : Date;

  @Common.Label        : 'Ausgleichsrücknahme'
  @Common.QuickInfo    : 'Ausgleich wurde zurückgenommen'
  CAClearingPostingIsReset       : Boolean not null;

  @Common.Label        : 'Ausgleichsgrund'
  @Common.Heading      : 'Ag'
  CAClearingReason               : String(2) not null;

  @Common.Label        : 'Ausgleichrestriktion'
  @Common.Heading      : 'AugRestrik'
  @Common.QuickInfo    : 'Ausgleichsrestriktion'
  CAClearingRestrictionCode      : String(1) not null;

  @Common.Label        : 'Ausgleichstatus'
  @Common.QuickInfo    : 'Ausgleichsstatus'
  CAClearingStatus               : String(1) not null;

  @Common.Label        : 'Collection-Schritt'
  CACollectionStep               : String(4) not null;

  @Common.Label        : 'Vertrag'
  @Common.QuickInfo    : 'Referenzangaben aus dem Vertrag'
  CAContract                     : String(20) not null;

  @Common.Label        : 'Stundung bis'
  @Common.Heading      : 'Stundung'
  CADeferralDate                 : Date;

  @Common.Label        : 'Belegnummer'
  @Common.QuickInfo    : 'Nummer eines Belegs des Vertragskontokorrents'
  CADocumentNumber               : String(12) not null;

  @Common.Label        : 'Belegart'
  @Common.Heading      : 'BA'
  CADocumentType                 : String(2) not null;

  @Common.Label        : 'ZWF-Kennzeichen'
  @Common.QuickInfo    : 'Zweifelhaftstellung/Einzelwertberichtigung'
  CADoubtfulOrValueAdjmtCode     : String(3) not null;

  @Common.Label        : 'Mahnstufe'
  CADunningLevel                 : String(2) not null;

  @Common.Label        : 'Mahnsperrgrund'
  @Common.Heading      : 'MSG'
  CADunningLockReason            : String(1) not null;

  @Common.Label        : 'Mahnverfahren'
  CADunningProcedure             : String(2) not null;

  @Common.Label        : 'AbrechnZeitraum bis'
  @Common.Heading      : 'AbrZeit bis'
  @Common.QuickInfo    : 'Obergrenze des Abrechnungszeitraums'
  CAEndDateOfBillingPeriod       : Date;

  @Common.Label        : 'Absoluter UmrechKurs'
  @Common.Heading      : 'Absoluter Umrechnungskurs'
  @Common.QuickInfo    : 'Absoluter Umrechnungskurs'
  CAExchangeRate                 : Decimal(9, 5) not null;

  @Common.Label        : 'Anzeigegruppierung'
  @Common.Heading      : 'Grp'
  @Common.QuickInfo    : 'Gruppierungsschlüssel für Anzeige der offenen Posten'
  CAGroupingCodeForBPItems       : String(3) not null;

  @Common.Label        : 'Zahlgruppierung'
  @Common.Heading      : 'Zahlgruppe'
  @Common.QuickInfo    : 'Gruppierungsfeld für den automatischen Zahlungsverkehr'
  CAGroupingForPayment           : String(10) not null;

  @Common.Label        : 'Inkassoposition'
  @Common.Heading      : 'InkPos'
  CAGrpgCodeForTransfToCollAgcy  : String(3) not null;

  @Common.Label        : 'Zinsschlüssel'
  @Common.Heading      : 'ZS'
  CAInterestCode                 : String(2) not null;

  @Common.Label        : 'Zinssperrgrund'
  @Common.Heading      : 'ZS'
  CAInterestLockReason           : String(1) not null;

  @Common.Label        : 'Anzahlung'
  @Common.Heading      : 'Anz'
  @Common.QuickInfo    : 'Position ist Anzahlung/Anzahlungsanforderung'
  CAIsDownPaymentRequest         : Boolean not null;

  @Common.Label        : 'Nicht mahnbar'
  @Common.QuickInfo    : 'Posten vom Mahnlauf ausschließen'
  CAItemIsExcludedFromDunning    : Boolean not null;

  @Common.Label        : 'Nur verrechenbar'
  @Common.Heading      : 'Rsp'
  @Common.QuickInfo    : 'Posten ist nur verrechenbar'
  CAItemIsOnlyForSettlement      : String(1) not null;

  @Common.Label        : 'Teilposition'
  @Common.Heading      : 'T'
  @Common.QuickInfo    : 'Position wurde aufgeteilt'
  CAItemIsSplit                  : Boolean not null;

  @Common.Label        : 'Zurückgenommen'
  @Common.Heading      : 'R'
  @Common.QuickInfo    : 'Posten wurde zurückgenommen'
  CAItemIsWithdrawn              : Boolean not null;

  @Common.Label        : 'Hauptvorgang'
  @Common.Heading      : 'HVorg.'
  @Common.QuickInfo    : 'Hauptvorgang zur Belegposition'
  CAMainTransaction              : String(4) not null;

  @Common.Label        : 'Nettofälligkeit'
  @Common.Heading      : 'fällig'
  @Common.QuickInfo    : 'Nettofälligkeitsdatum'
  CANetDueDate                   : Date;

  @Common.Label        : 'Anz. Wiederholungen'
  @Common.Heading      : 'AWh'
  @Common.QuickInfo    : 'Anzahl Wiederholungspositionen'
  CANumberOfRepetitionItems      : String(3) not null;

  @Common.Label        : 'Kz sonstige Steuer'
  @Common.Heading      : 'St'
  @Common.QuickInfo    : 'Steuerkennzeichen für sonstige Steuern'
  CAOtherTaxCode                 : String(2) not null;

  @Common.Label        : 'Zahlungssperrgrund'
  @Common.Heading      : 'Zsp'
  @Common.QuickInfo    : 'Zahlungssperrgrund für maschinelle Zahlung'
  CAPaymentLockReason            : String(1) not null;

  @Common.Label        : 'Zahlweg'
  CAPaymentMethod                : String(1) not null;

  @Common.Label        : 'Buchungsdatum'
  @Common.Heading      : 'BuchngsDat'
  @Common.QuickInfo    : 'Buchungsdatum im Beleg'
  CAPostingDate                  : Date;

  @Common.Label        : 'Vertr.Position'
  @Common.Heading      : 'VertrPos'
  @Common.QuickInfo    : 'Vertrag: Positionsnummer'
  CAProviderContractItemNumber   : String(6) not null;

  @Common.Label        : 'Referenzbelegnummer'
  @Common.Heading      : 'Referenz'
  CAReferenceDocument            : String(16) not null;

  @Common.Label        : 'Wiederholungsgruppe'
  @Common.Heading      : 'WGr'
  CARepetitionGroup              : String(3) not null;

  @Common.Label        : 'Wiederholgsposition'
  @Common.Heading      : 'Wdh'
  @Common.QuickInfo    : 'Wiederholungsposition im Beleg des Vertragskontokorrents'
  CARepetitionItemNumber         : String(3) not null;

  @Common.Label        : 'Rückläufergrund'
  @Common.Heading      : 'RlG'
  CAReturnReason                 : String(3) not null;

  @Common.Label        : 'Letztempfänger'
  @Common.Heading      : 'LetztEmpf'
  @Common.QuickInfo    : 'Vertragskonto des Letztempfängers'
  CARevenueDistrFinalRecipient   : String(12) not null;

  @Common.Label        : 'AbrechnZeitraum von'
  @Common.Heading      : 'AbrZeit von'
  @Common.QuickInfo    : 'Untergrenze des Abrechnungszeitraums'
  CAStartDateOfBillingPeriod     : Date;

  @Common.Label        : 'Auslösender StatSchl'
  @Common.Heading      : 'A'
  @Common.QuickInfo    : 'Statistikschlüssel der auslösenden Position'
  CAStatisticalCodeOfOriginItem  : String(1) not null;

  @Common.Label        : 'Statistikschlüssel'
  @Common.Heading      : 'StatSchl.'
  @Common.QuickInfo    : 'Art der statistischen Belegposition'
  CAStatisticalItemCode          : String(1) not null;

  @Common.Label        : 'Subapplikation'
  @Common.QuickInfo    : 'Subapplikation im Vertragskontokorrent'
  CASubApplication               : String(1) not null;

  @Common.Label        : 'Teilposition'
  @Common.Heading      : 'Tps'
  @Common.QuickInfo    : 'Teilposition zu einem Teilausgleich im Beleg'
  CASubItemNumber                : String(3) not null;

  @Common.Label        : 'Belegtyp'
  @Common.Heading      : 'T'
  @Common.QuickInfo    : 'Typ des stellvert. Belegs aus dem Vertragskontokorrent'
  CASubstituteDocumentCategory   : String(1) not null;

  @Common.Label        : 'stellvertretend'
  @Common.Heading      : 'stellvertr'
  @Common.QuickInfo    : 'Nummer des stellvertretenden FI-CA-Belegs'
  CASubstituteDocumentNumber     : String(12) not null;

  @Common.Label        : 'Teilvorgang'
  @Common.Heading      : 'TVorg.'
  @Common.QuickInfo    : 'Teilvorgang zur Belegposition'
  CASubTransaction               : String(4) not null;

  @Common.Label        : 'Steuerdatum'
  @Common.Heading      : 'Steuerdat'
  @Common.QuickInfo    : 'Für die Berechnung der Steuern maßgebliches Datum'
  CATaxDate                      : Date;

  @Common.Label        : 'Ausgleichsvalutadat'
  @Common.QuickInfo    : 'Valutadatum der Ausgleichsbuchung'
  CAValueDateForClearing         : Date;

  @Common.Label        : 'Quellensteuerzusatz'
  @Common.Heading      : 'QstZu'
  CAWithholdingTaxSupplement     : String(2) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Ausgeglichen'
  @Common.QuickInfo    : 'Ausgeglichener Betrag in Transaktionswährung'
  ClearedAmountInTransCrcy       : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: CAClearingCurrency
  @Common.Label        : 'Ausgleichsbetrag'
  @Common.Heading      : 'AugBt'
  @Common.QuickInfo    : 'Ausgleichsbetrag in Ausgleichswährung'
  ClearingAmountInClrgCurrency   : Decimal (precision : 23) not null;

  @Common.Label        : 'Buchungskreis'
  @Common.Heading      : 'BuKr'
  CompanyCode                    : String(4) not null;

  @Common.Label        : 'Vertragskonto'
  @Common.Heading      : 'Vertragskont'
  @Common.QuickInfo    : 'Vertragskontonummer'
  ContractAccount                : String(12) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Haben Belegwährung'
  @Common.QuickInfo    : 'Habenbetrag in Transaktionswährung'
  CreditAmountInTransCrcy        : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Soll Belegwährung'
  @Common.QuickInfo    : 'Sollbetrag in Transaktionswährung'
  DebitAmountInTransCrcy         : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Abzug Belegwährung'
  @Common.QuickInfo    : 'Abzugsbetrag in Transaktionswährung mit Vorzeichen'
  DeductionAmountInTransCrcy     : Decimal (precision : 23) not null;

  @Common.Label        : 'Sparte'
  @Common.Heading      : 'SP'
  Division                       : String(2) not null;

  @Common.Label        : 'Nullausgleich'
  @Common.QuickInfo    : 'Kontenstand: Posten eines Nullausgleichs'
  DocItemIsSimulatedForZeroClrg  : Boolean not null;

  @Common.Label        : 'Ausgleich'
  @Common.Heading      : 'A'
  @Common.QuickInfo    : 'Kontenstand: Simulierte Ausgleichsbuchung'
  DocumentClearedItemIsSimulated : Boolean not null;

  @Common.Label        : 'Buchungsbelegdatum'
  DocumentDate                   : Date;

  @Common.Label        : 'Fälliger Posten'
  @Common.Heading      : 'Fällig'
  @Common.QuickInfo    : 'Posten ist fällig'
  DocumentItemIsDue              : Boolean not null;

  @Common.Label        : 'Echte Anzahlung'
  @Common.QuickInfo    : 'Posten ist echte Anzahlung'
  DocumentItemIsRealDownPayment  : Boolean not null;

  @Common.Label        : 'Simulierte OP'
  @Common.Heading      : 'OP'
  @Common.QuickInfo    : 'Kontenstand: Simulierte offene Posten'
  DocumentOpenItemIsSimulated    : Boolean not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Fälliger Betrag'
  @Common.Heading      : 'Fällig'
  @Common.QuickInfo    : 'Fälliger Betrag in Transaktionswährung'
  DueAmountInTransCrcy           : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Mahnbetrag'
  @Common.QuickInfo    : 'Gemahnter Betrag in Transaktionswährung'
  DunningAmountInTransCurrency   : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Skontobasis'
  @Common.QuickInfo    : 'Skontofähiger Betrag in Transaktionswährung mit Vorzeichen'
  EligibleAmountForCshDiscInTC   : Decimal (precision : 23) not null;

  @Common.Label        : 'UmrechKrs mengennot.'
  @Common.Heading      : 'Umrechnungskurs ist Mengennotierung'
  @Common.QuickInfo    : 'Umrechnungskurs ist Mengennotierung'
  ExchRateIsIndirectQuotation    : Boolean not null;

  @Common.Label        : 'Funktionsbereich'
  @Common.Heading      : 'FBer'
  FunctionalArea                 : String(16) not null;

  @Common.Label        : 'Finanzstelle'
  FundsCenter                    : String(16) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Noch offen'
  @Common.QuickInfo    : 'Noch offener Betrag in Transaktionswährung (mit Vorzeichen)'
  OpenAmountInTransCrcy          : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: PaymentCurrency
  @Common.Label        : 'Zahlbetrag'
  PaymentAmountInPaytCurrency    : Decimal (precision : 23) not null;

  @Common.IsCurrency   : true
  @Common.Label        : 'Zahlungswährung'
  @Common.Heading      : 'Whrg'
  PaymentCurrency                : String(3) not null;

  @Common.Label        : 'Profitcenter'
  ProfitCenter                   : String(10) not null;

  @Common.Label        : 'Segment'
  @Common.QuickInfo    : 'Segment für Segmentberichterstattung'
  Segment                        : String(10) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Steuerbetrag'
  @Common.QuickInfo    : 'Steuerbetrag in Transaktionswährung mit Vorzeichen'
  TaxAmountInTransCrcy           : Decimal (precision : 23) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Steuerbasis'
  @Common.QuickInfo    : 'Steuerbasisbetrag'
  TaxBaseAmountInTransCrcy       : Decimal (precision : 23) not null;

  @Common.Label        : 'Steuerkennzeichen'
  @Common.Heading      : 'St'
  @Common.QuickInfo    : 'Umsatzsteuerkennzeichen'
  TaxCode                        : String(2) not null;

  @Common.Label        : 'Steuerstandort'
  TaxJurisdiction                : String(15) not null;

  @Measures.ISOCurrency: TransactionCurrency
  @Common.Label        : 'Gesamtbetrag'
  @Common.QuickInfo    : 'Gesamtbetrag in Transaktionswährung'
  TotalAmountInTransactionCrcy   : Decimal (precision : 23) not null;

  @Common.IsCurrency   : true
  @Common.Label        : 'Währung'
  @Common.Heading      : 'Währg'
  @Common.QuickInfo    : 'Transaktionswährung'
  TransactionCurrency            : String(3) not null;

  @Common.Label        : 'Quellsteuerkennz.'
  @Common.Heading      : 'QK'
  @Common.QuickInfo    : 'Quellensteuerkennzeichen'
  WithholdingTaxCode             : String(2) not null;
};

@cds.external: true
type payint_s4hana.SAP__Message {
  code              :      LargeString not null;
  message           :      LargeString not null;
  target            :      LargeString;
  additionalTargets : many LargeString not null;
  transition        :      Boolean not null;

  @odata.Type: 'Edm.Byte'
  numericSeverity   :      Integer not null;
  longtextUrl       :      LargeString;
};

@cds.external                                       : true
@CodeList.CurrencyCodes                             : {
  Url           : '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'Currencies'
}
@Aggregation.ApplySupported                         : {
  Transformations: [
    'aggregate',
    'groupby',
    'filter'
  ],
  Rollup         : #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering: true
@Capabilities.FilterFunctions                       : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats                      : [
  'application/json',
  'application/pdf'
]
@PDF.Features                                       : {
  DocumentDescriptionReference : '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat                : true,
  Border                       : true,
  CoverPage                    : true,
  FitToPage                    : true,
  FontName                     : true,
  FontSize                     : true,
  Margin                       : true,
  Padding                      : true,
  Signature                    : true,
  HeaderFooter                 : true,
  ResultSizeDefault            : 20000,
  ResultSizeMaximum            : 20000
}
@Capabilities.KeyAsSegmentSupported                 : true
@Capabilities.AsynchronousRequestsSupported         : true
service payint_s4hana {};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.Label                                                : 'Geschäftspartner'
@Common.Messages                                             : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                  : false
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
entity payint_s4hana.A_BusinessPartner {
      @Common.IsUpperCase    : true
      @Common.Label          : 'Geschäftspartner'
      @Common.QuickInfo      : 'Geschäftspartnernummer'
  key BusinessPartner                :      String(10) not null;

      @Core.Computed         : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Debitor'
      @Common.QuickInfo      : 'Debitorennummer'
      Customer                       :      String(10) not null;

      @Core.Computed         : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Lieferant'
      @Common.QuickInfo      : 'Kontonummer des Lieferanten bzw. Kreditors'
      Supplier                       :      String(10) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Akademischer Titel 1'
      @Common.QuickInfo      : 'Akademischer Titel: Schlüssel'
      AcademicTitle                  :      String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Berechtigungsgruppe'
      @Common.Heading        : 'BGrp'
      AuthorizationGroup             :      String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Geschäftspartnertyp'
      @Common.Heading        : 'GTyp'
      BusinessPartnerCategory        :      String(1) not null;

      @Core.Computed         : true
      BusinessPartnerFullName        :      String(81) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Gruppierung'
      @Common.Heading        : 'Grp.'
      @Common.QuickInfo      : 'Geschäftspartnergruppierung'
      BusinessPartnerGrouping        :      String(4) not null;

      @Core.Computed         : true
      BusinessPartnerName            :      String(81) not null;

      @Core.Computed         : true
      @Common.Label          : 'GP-GUID'
      @Common.Heading        : 'Geschäftspartner-GUID'
      @Common.QuickInfo      : 'GUID eines Geschäftspartners'
      BusinessPartnerUUID            :      UUID;

      @Common.Label          : 'Korrespondenzsprache'
      @Common.Heading        : 'SP'
      @Common.QuickInfo      : 'Geschäftspartner: Korrespondenzsprache'
      CorrespondenceLanguage         :      String(2) not null;

      @Core.Computed         : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Angelegt von'
      @Common.Heading        : 'Benutzer'
      @Common.QuickInfo      : 'Benutzer, der das Objekt angelegt hat'
      CreatedByUser                  :      String(12) not null;

      @Core.Computed         : true
      @Common.Label          : 'Angelegt am'
      @Common.Heading        : 'Datum'
      @Common.QuickInfo      : 'Datum, an dem das Objekt angelegt wurde'
      CreationDate                   :      Date;

      @Core.Computed         : true
      @Common.Label          : 'Angelegt um'
      @Common.Heading        : 'Uhrzeit'
      @Common.QuickInfo      : 'Uhrzeit, zu der das Objekt angelegt wurde'
      CreationTime                   :      Time not null;

      @Common.Label          : 'Vorname'
      @Common.QuickInfo      : 'Vorname des Geschäftspartners (Person)'
      FirstName                      :      String(40) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Anredeschlüssel'
      @Common.Heading        : 'Schlüssel'
      FormOfAddress                  :      String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Branche'
      Industry                       :      String(10) not null;

      @Common.IsDigitSequence: true
      @Common.Label          : 'Int. Lokationsnr. 1'
      @Common.Heading        : 'ILN 1'
      @Common.QuickInfo      : 'Internationale Lokationsnummer (Teil 1)'
      InternationalLocationNumber1   :      String(7) not null;

      @Common.IsDigitSequence: true
      @Common.Label          : 'Int. Lokationsnr. 2'
      @Common.Heading        : 'ILN 2'
      @Common.QuickInfo      : 'Internationale Lokationsnummer (Teil 2)'
      InternationalLocationNumber2   :      String(5) not null;

      @Common.Label          : 'Weiblich'
      @Common.Heading        : 'W'
      @Common.QuickInfo      : 'Auswahl: Geschäftspartner ist weiblich'
      IsFemale                       :      Boolean not null;

      @Common.Label          : 'Männlich'
      @Common.Heading        : 'M'
      @Common.QuickInfo      : 'Auswahl: Geschäftspartner ist männlich'
      IsMale                         :      Boolean not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Natürliche Person'
      @Common.QuickInfo      : 'Geschäftspartner gilt steuerrechlich als natürliche Person'
      IsNaturalPerson                :      String(1) not null;

      @Common.Label          : 'Unbekannt'
      @Common.Heading        : 'U'
      @Common.QuickInfo      : 'Auswahl: Geschlecht des Geschäftspartners ist unbekannt'
      IsSexUnknown                   :      Boolean not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Geschlecht'
      @Common.QuickInfo      : 'Geschlecht des Geschäftspartners (Person)'
      GenderCodeName                 :      String(1) not null;

      @Common.Label          : 'Sprache'
      @Common.Heading        : 'SP'
      @Common.QuickInfo      : 'Geschäftspartner: Sprache'
      Language                       :      String(2) not null;

      @Core.Computed         : true
      @Common.Label          : 'Geändert am'
      @Common.Heading        : 'Datum'
      @Common.QuickInfo      : 'Datum, an dem das Objekt zuletzt geändert wurde'
      LastChangeDate                 :      Date;

      @Core.Computed         : true
      @Common.Label          : 'Geändert um'
      @Common.Heading        : 'Uhrzeit'
      @Common.QuickInfo      : 'Uhrzeit, an der das Objekt zuletzt geändert wurde'
      LastChangeTime                 :      Time not null;

      @Core.Computed         : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Geändert von'
      @Common.Heading        : 'Benutzer'
      @Common.QuickInfo      : 'Benutzer, der das Objekt zuletzt geändert hat'
      LastChangedByUser              :      String(12) not null;

      @Common.Label          : 'Nachname'
      @Common.QuickInfo      : 'Nachname des Geschäftspartners (Person)'
      LastName                       :      String(40) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Rechtsform'
      @Common.QuickInfo      : 'GP: Rechtsform der Organisation'
      LegalForm                      :      String(2) not null;

      @Common.Label          : 'Name 1'
      @Common.QuickInfo      : 'Name 1 der Organisation'
      OrganizationBPName1            :      String(40) not null;

      @Common.Label          : 'Name 2'
      @Common.QuickInfo      : 'Name 2 der Organisation'
      OrganizationBPName2            :      String(40) not null;

      @Common.Label          : 'Name 3'
      @Common.QuickInfo      : 'Name 3 der Organisation'
      OrganizationBPName3            :      String(40) not null;

      @Common.Label          : 'Name 4'
      @Common.QuickInfo      : 'Name 4 der Organisation'
      OrganizationBPName4            :      String(40) not null;

      @Common.Label          : 'Gründungsdatum'
      @Common.Heading        : 'Gründung'
      @Common.QuickInfo      : 'Gründungsdatum der Organisation'
      OrganizationFoundationDate     :      Date;

      @Common.Label          : 'Liquidationsdatum'
      @Common.Heading        : 'Liquidat.'
      @Common.QuickInfo      : 'Liquidationsdatum der Organisation'
      OrganizationLiquidationDate    :      Date;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Suchbegriff 1'
      @Common.QuickInfo      : 'Suchbegriff 1 zum Geschäftspartner'
      SearchTerm1                    :      String(20) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Suchbegriff 2'
      @Common.QuickInfo      : 'Suchbegriff 2 zum Geschäftspartner'
      SearchTerm2                    :      String(20) not null;

      @Common.Label          : '2. Nachname'
      @Common.QuickInfo      : 'Zweiter Nachname der Person'
      AdditionalLastName             :      String(40) not null;

      @Common.Label          : 'Geburtsdatum'
      @Common.Heading        : 'GebDatum'
      @Common.QuickInfo      : 'Geburtsdatum des Geschäftspartners'
      BirthDate                      :      Date;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Status Geburtsdatum'
      @Common.QuickInfo      : 'Geburtsdatum: Status'
      BusinessPartnerBirthDateStatus :      String(1) not null;

      @Common.Label          : 'Geburtsort'
      @Common.QuickInfo      : 'Geburtsort des Geschäftspartners'
      BusinessPartnerBirthplaceName  :      String(40) not null;

      @Common.Label          : 'Sterbedatum'
      @Common.Heading        : 'Sterbedat.'
      @Common.QuickInfo      : 'Sterbedatum des Geschäftspartners'
      BusinessPartnerDeathDate       :      Date;

      @Common.Label          : 'Zentrale Sperre'
      @Common.QuickInfo      : 'Zentrale Sperre für den Geschäftspartner'
      BusinessPartnerIsBlocked       :      Boolean not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Geschäftspartnerart'
      @Common.Heading        : 'Art'
      BusinessPartnerType            :      String(4) not null;

      @Core.Computed         : true
      ETag                           :      String(26) not null;

      @Common.Label          : 'Name 1'
      @Common.QuickInfo      : 'Name 1 (Gruppe)'
      GroupBusinessPartnerName1      :      String(40) not null;

      @Common.Label          : 'Name 2'
      @Common.QuickInfo      : 'Name 2 (Gruppe)'
      GroupBusinessPartnerName2      :      String(40) not null;

      @Core.Computed         : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Adreßnummer'
      @Common.Heading        : 'Adreßnum.'
      @Common.QuickInfo      : 'Adressnummer'
      IndependentAddressID           :      String(10) not null;

      @Common.IsDigitSequence: true
      @Common.Label          : 'Prüfziffer'
      @Common.QuickInfo      : 'Prüfziffer der internationalen Lokationsnummer'
      InternationalLocationNumber3   :      String(1) not null;

      @Common.Label          : '2. Vorname'
      @Common.Heading        : '2. Vorname oder mittlerer Name'
      @Common.QuickInfo      : 'Mittlerer Name oder zweiter Vorname der Person'
      MiddleName                     :      String(40) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Land/Reg. f. Aufber.'
      @Common.Heading        : 'L/R'
      @Common.QuickInfo      : 'Land/Region für Namensaufbereitungsregel'
      NameCountry                    :      String(3) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Format Namensaufb.'
      @Common.Heading        : 'Format'
      @Common.QuickInfo      : 'Format für die Namensaufbereitung'
      NameFormat                     :      String(2) not null;

      @Common.Label          : 'Vollständiger Name'
      PersonFullName                 :      String(80) not null;

      @Core.Computed         : true
      @Common.IsUpperCase    : true
      @Common.Label          : 'Personennummer'
      @Common.Heading        : 'Person'
      PersonNumber                   :      String(10) not null;

      @Common.Label          : 'Archiviervormerkung'
      @Common.QuickInfo      : 'Zentrale Archiviervormerkung'
      IsMarkedForArchiving           :      Boolean not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Ext. Partnernummer'
      @Common.QuickInfo      : 'Geschäftspartnernummer im externen System'
      BusinessPartnerIDByExtSystem   :      String(20) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Druckformat'
      @Common.QuickInfo      : 'Druckformat Geschäftspartner'
      BusinessPartnerPrintFormat     :      String(1) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Beruf'
      @Common.QuickInfo      : 'Beruf des Geschäftspartners'
      BusinessPartnerOccupation      :      String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Familienstand'
      @Common.QuickInfo      : 'Familienstand des Geschäftspartners'
      BusPartMaritalStatus           :      String(1) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Nationalität'
      @Common.Heading        : 'Nat'
      @Common.QuickInfo      : 'Nationalität des Geschäftspartners'
      BusPartNationality             :      String(3) not null;

      @Common.Label          : 'Geburtsname'
      @Common.QuickInfo      : 'Geburtsname des Geschäftspartners'
      BusinessPartnerBirthName       :      String(40) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Namenszusatz'
      @Common.Heading        : 'Schlüssel'
      @Common.QuickInfo      : 'Namenszusatz, z.B. Adelstitel (Schlüssel)'
      BusinessPartnerSupplementName  :      String(4) not null;

      @Common.Label          : 'Arbeitgeber'
      @Common.QuickInfo      : 'Name des Arbeitgebers einer natürlichen Person'
      NaturalPersonEmployerName      :      String(35) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Präfixschlüssel'
      @Common.Heading        : 'Präfixsch.'
      @Common.QuickInfo      : 'Vorsatzwort zum Namen (Schlüssel)'
      LastNamePrefix                 :      String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : '2.Vorsatzwort'
      @Common.Heading        : '2.Schlüssel'
      @Common.QuickInfo      : '2. Vorsatzwort zum Namen (Schlüssel)'
      LastNameSecondPrefix           :      String(4) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Initialen'
      @Common.QuickInfo      : '"Middle Initial" bzw. Initialen der Person'
      Initials                       :      String(10) not null;

      @Common.Label          : 'VS nicht erforderl.'
      @Common.Heading        : 'Verantwortliche Stelle nicht erforderl.'
      @Common.QuickInfo      : 'GP: Verantwortliche Stelle nicht erforderlich'
      BPDataControllerIsNotRequired  :      Boolean not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Partnergesellsch.Nr.'
      @Common.Heading        : 'PartGs'
      @Common.QuickInfo      : 'Partner Gesellschaftsnummer'
      TradingPartner                 :      String(6) not null;
      SAP__Messages                  : many payint_s4hana.SAP__Message not null;
};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.Label                                                : 'Vertragskonto'
@Common.Messages                                             : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                  : false
@Capabilities.InsertRestrictions.RequiredProperties          : ['ContractAccountCategory']
@Capabilities.InsertRestrictions.Insertable                  : false
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.Updatable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
entity payint_s4hana.A_ContractAccount {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Vertragskonto'
      @Common.Heading                   : 'Vertragskont'
      @Common.QuickInfo                 : 'Vertragskontonummer'
  key ContractAccount             :      String(12) not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Angelegt am'
      @Common.Heading                   : 'Angel.am'
      @Common.QuickInfo                 : 'Datum, an dem der Satz hinzugefügt wurde'
      CreationDate                :      Date;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Angelegt von'
      @Common.Heading                   : 'Angel.von'
      @Common.QuickInfo                 : 'Name des Sachbearbeiters, der das Objekt hinzugefügt hat'
      CreatedByUser               :      String(12) not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Löschkennzeichen'
      @Common.Heading                   : 'Lkz'
      IsMarkedForDeletion         :      Boolean not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Geändert am'
      @Common.Heading                   : 'Geänd.am'
      @Common.QuickInfo                 : 'Datum der letzten Änderung'
      LastChangeDate              :      Date;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Geändert von'
      @Common.QuickInfo                 : 'Name des Sachbearbeiters, der das Objekt geändert hat.'
      LastChangedByUser           :      String(12) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgApplicationArea'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Anwendungsbereich'
      @Common.Heading                   : 'AnwBer'
      CAApplicationArea           :      String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'ContractAccountCategory'
      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Vertragskontotyp'
      @Common.Heading                   : 'VKT'
      ContractAccountCategory     :      String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'VtrgsKonto Altsystem'
      @Common.QuickInfo                 : 'Vertragskontonummer im Altsystem'
      ContractAccountExtReference :      String(20) not null;

      @Common.Label                     : 'Vertragskontobezchng'
      @Common.Heading                   : 'Vertragskontobezeichnung'
      @Common.QuickInfo                 : 'Bezeichnung des Vertragskontos'
      ContractAccountName         :      String(35) not null;
      SAP__Messages               : many payint_s4hana.SAP__Message not null;

      @Common.Composition               : true
      _ContractAccountPartner     :      Composition of many payint_s4hana.A_ContractAccountPartner {};
} actions {
  function RetrieveAccountBalance(_it : $self not null,
                                  @Common.Label:'Geschäftspartner'
                                  @Common.QuickInfo:'Geschäftspartnernummer'
                                  BusinessPartner : String(10) not null,
                                  @Common.Label:'Vertrag'
                                  @Common.QuickInfo:'Referenzangaben aus dem Vertrag'
                                  CAContract : String(20) not null,
                                  @Common.Label:'Ausgeglichene Posten'
                                  @Common.Heading:'A'
                                  @Common.QuickInfo:'Ausgeglichene Posten auswählen'
                                  ClearedDocItemsAreSelected : Boolean not null,
                                  @Common.Label:'Alle statist.Posten'
                                  @Common.QuickInfo:'Alle statistischen Posten anzeigen'
                                  StatisticalDocItemsAreSelected : Boolean not null,
                                  @Common.Label:'Stichtag'
                                  @Common.QuickInfo:'Stichtag für offene Posten'
                                  DocOpenItemReconstructionDate : Date,
                                  @Common.Label:'Ursprungsposten'
                                  @Common.QuickInfo:'Ratenpläne: Ursprungsposten selektieren'
                                  InstlmntPlnOriglDocItmsAreSeld : Boolean not null,
                                  @Common.Label:'SammRPos'
                                  @Common.QuickInfo:'Ursprungsposten zu Sammelrechnungen lesen'
                                  CollvBillOriglDocItmsAreSeld : Boolean not null,
                                  @Common.Label:'Hauptvorgang'
                                  @Common.Heading:'HVorg.'
                                  @Common.QuickInfo:'Hauptvorgang zur Belegposition'
                                  CAMainTransaction : String(4) not null,
                                  @Common.Label:'Teilvorgang'
                                  @Common.Heading:'TVorg.'
                                  @Common.QuickInfo:'Teilvorgang zur Belegposition'
                                  CASubTransaction : String(4) not null,
                                  @Common.Label:'Statistikschlüssel'
                                  @Common.Heading:'StatSchl.'
                                  @Common.QuickInfo:'Art der statistischen Belegposition'
                                  CAStatisticalItemCode : String(1) not null,
                                  @Common.Label:'Ausgleichsgrund'
                                  @Common.Heading:'Ag'
                                  CAClearingReason : String(2) not null,
                                  @Common.Label:'Buchungskreis'
                                  @Common.Heading:'BuKr'
                                  CompanyCode : String(4) not null,
                                  @Common.Label:'Belegdatum'
                                  @Common.Heading:'Bel.Datum'
                                  @Common.QuickInfo:'Belegdatum im Beleg'
                                  FromDocumentDate : Date,
                                  @Common.Label:'Belegdatum'
                                  @Common.Heading:'Bel.Datum'
                                  @Common.QuickInfo:'Belegdatum im Beleg'
                                  ToDocumentDate : Date,
                                  @Common.Label:'Buchungsdatum'
                                  @Common.Heading:'BuchngsDat'
                                  @Common.QuickInfo:'Buchungsdatum im Beleg'
                                  FromPostingDate : Date,
                                  @Common.Label:'Buchungsdatum'
                                  @Common.Heading:'BuchngsDat'
                                  @Common.QuickInfo:'Buchungsdatum im Beleg'
                                  ToPostingDate : Date,
                                  @Common.Label:'Nettofälligkeit'
                                  @Common.Heading:'fällig'
                                  @Common.QuickInfo:'Nettofälligkeitsdatum'
                                  FromNetDueDate : Date,
                                  @Common.Label:'Nettofälligkeit'
                                  @Common.Heading:'fällig'
                                  @Common.QuickInfo:'Nettofälligkeitsdatum'
                                  ToNetDueDate : Date,
                                  @Common.Label:'Skontofälligkeit'
                                  @Common.Heading:'SkontofällD'
                                  @Common.QuickInfo:'Skontofälligkeitsdatum'
                                  FromCashDiscountDueDate : Date,
                                  @Common.Label:'Skontofälligkeit'
                                  @Common.Heading:'SkontofällD'
                                  @Common.QuickInfo:'Skontofälligkeitsdatum'
                                  ToCashDiscountDueDate : Date,
                                  @Common.Label:'Stundung bis'
                                  @Common.Heading:'Stundung'
                                  FromDeferralDate : Date,
                                  @Common.Label:'Stundung bis'
                                  @Common.Heading:'Stundung'
                                  ToDeferralDate : Date,
                                  @Common.Label:'Ausgleichsdatum'
                                  @Common.Heading:'AusglDat'
                                  FromClearingDate : Date,
                                  @Common.Label:'Ausgleichsdatum'
                                  @Common.Heading:'AusglDat'
                                  ToClearingDate : Date) returns many payint_s4hana.ContractAccountRetrieveAccountBalanceResult_Type;
};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.Label                                                : 'Vertragskontopartner'
@Capabilities.SearchRestrictions.Searchable                  : false
@Capabilities.InsertRestrictions.RequiredProperties          : ['CARelationshipOfBPToContrAcct']
@Capabilities.InsertRestrictions.Insertable                  : false
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.Updatable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions: [{
  Property          : CADirectDebitLimit,
  AllowedExpressions: 'MultiValue'
}]
entity payint_s4hana.A_ContractAccountPartner {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Vertragskonto'
      @Common.Heading                   : 'Vertragskont'
      @Common.QuickInfo                 : 'Vertragskontonummer'
  key ContractAccount                : String(12) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Geschäftspartner'
      @Common.Heading                   : 'GPartner'
      @Common.QuickInfo                 : 'Geschäftspartnernummer'
  key BusinessPartner                : String(10) not null;

      @Common.Label                     : 'Vertragskontobezchng'
      @Common.Heading                   : 'Vertragskontobezeichnung'
      @Common.QuickInfo                 : 'Bezeichnung des Vertragskontos'
      ContractAccountName            : String(35) not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Angelegt am'
      @Common.Heading                   : 'Angel.am'
      @Common.QuickInfo                 : 'Datum, an dem der Satz hinzugefügt wurde'
      CreationDate                   : Date;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Angelegt von'
      @Common.Heading                   : 'Angel.von'
      @Common.QuickInfo                 : 'Name des Sachbearbeiters, der das Objekt hinzugefügt hat'
      CreatedByUser                  : String(12) not null;

      @Common.Label                     : 'Löschkennzeichen'
      @Common.Heading                   : 'Lkz'
      IsMarkedForDeletion            : Boolean not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Geändert am'
      @Common.Heading                   : 'Geänd.am'
      @Common.QuickInfo                 : 'Datum der letzten Änderung'
      LastChangeDate                 : Date;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Geändert von'
      @Common.QuickInfo                 : 'Name des Sachbearbeiters, der das Objekt geändert hat.'
      LastChangedByUser              : String(12) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Bankverb-ID Eingang'
      @Common.Heading                   : 'BvID'
      @Common.QuickInfo                 : 'Bankverbindungs-ID für Eingangszahlungen'
      CABankIDForIncomingPayments    : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Bankverb-ID Ausgang'
      @Common.Heading                   : 'BvID'
      @Common.QuickInfo                 : 'Bankverbindungs-ID für Ausgangszahlungen'
      CABankIDForOutgoingPayments    : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgPaymentMethod'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Eingangszahlweg'
      @Common.Heading                   : 'EZ'
      @Common.QuickInfo                 : 'Zahlweg für Eingangszahlungen'
      CAPaymentMethodForIncgPayment  : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgPaymentMethod'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Ausgangszahlwege'
      @Common.Heading                   : 'AusgZ'
      @Common.QuickInfo                 : 'Zahlwege für Ausgangszahlungen'
      CAPaymentMethodForOutgPayment  : String(5) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgHouseBankReference'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Eigene Bankverbindg'
      @Common.Heading                   : 'Eigene Bankverbindung'
      @Common.QuickInfo                 : 'Eigene Bankverbindung'
      CAHouseBankReference           : String(25) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zahlkarten-ID Eing.'
      @Common.Heading                   : 'CcID'
      @Common.QuickInfo                 : 'Zahlungskarten-ID für Eingangszahlungen'
      CAPaymentCardIDForIncomingPayt : String(6) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zahlkarten-ID Ausg.'
      @Common.Heading                   : 'CcID'
      @Common.QuickInfo                 : 'Zahlungskarten-ID für Ausgangszahlungen'
      CAPaymentCardIDForOutgoingPayt : String(6) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mandatsreferenz'
      @Common.QuickInfo                 : 'Eindeutige Referenz auf das Mandat je Zahlungsempfänger'
      SEPAMandate                    : String(35) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgDunningProcedure'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mahnverfahren'
      CADunningProcedure             : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgDunningNoticeGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mahngruppierung'
      @Common.QuickInfo                 : 'Gruppierung für Mahnungen'
      CADunningNoticeGroup           : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgDunningProcedure'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'KorrespMahnverfahren'
      @Common.Heading                   : 'KM'
      @Common.QuickInfo                 : 'Korrespondenz-Mahnverfahren'
      CACorrespondenceDunningProced  : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zust. Sachbearbeiter'
      @Common.Heading                   : 'Bearbeiter'
      @Common.QuickInfo                 : 'Zuständiger Sachbearbeiter'
      CACollectionsClerk             : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgCollMasterDataGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Stammdatengruppe'
      @Common.QuickInfo                 : 'Collections Management: Stammdatengruppe'
      CACollectionsMasterDataGroup   : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgCollectionStrategy'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Coll.-Strategie'
      @Common.Heading                   : 'Collection-Strategie'
      @Common.QuickInfo                 : 'Collection-Strategie'
      CACollectionStrategy           : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Coll.-Kontaktperson'
      @Common.Heading                   : 'Kontaktperson'
      @Common.QuickInfo                 : 'Collections-Kontaktperson'
      CACollectionsContactPerson     : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Konto reguliert über'
      @Common.Heading                   : 'verrechenbar'
      @Common.QuickInfo                 : 'Vertragskonto, über das im Zahlungsverkehr reguliert wird'
      ContractAccountForPayment      : String(12) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Partner Regulierer'
      @Common.Heading                   : 'Regulierer'
      @Common.QuickInfo                 : 'Geschäftspartner, über den im Zahlungsverkehr reguliert wird'
      CABusinessPartnerForPayment    : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Abweichender Zahler'
      @Common.Heading                   : 'Abw.Zahler'
      CAAlternativePayer             : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Abwei. Zahlempfänger'
      @Common.Heading                   : 'Abw.ZaEmpf'
      @Common.QuickInfo                 : 'Abweichender Zahlungsempfänger'
      CAAlternativePayee             : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Abwei. Mahnempfänger'
      @Common.Heading                   : 'Abw.MaEmpf'
      @Common.QuickInfo                 : 'Abweichender Mahnempfänger'
      CAAlternativeDunningRecipient  : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Abw.Rechnungsempfg'
      @Common.Heading                   : 'RechnEmpfg'
      @Common.QuickInfo                 : 'Abweichender Rechnungsempfänger'
      CAAlternativeInvoiceRecipient  : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Korresp. Empfänger'
      @Common.Heading                   : 'Korresp. Empf.'
      @Common.QuickInfo                 : 'Abweichender Korrespondenzempfänger für den Standardfall'
      CAAlternativeCorrespncRcpnt    : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Adreßnum.abw.Zahler'
      @Common.Heading                   : 'AdrNr.a.Z.'
      @Common.QuickInfo                 : 'Adressnummer zum abweichenden Zahler'
      CAAddressIDOfAlternativePayer  : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'AdrNr.abw.Zahlempfg.'
      @Common.Heading                   : 'ADrNr.aZEm'
      @Common.QuickInfo                 : 'Adressnummer zum abweichenden Zahlungsempfänger'
      CAAddressIDOfAlternativePayee  : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Adressnummer zum abweichenden Mahnempfänger'
      CAAddressIDOfAltvDunRecipient  : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Adressnummer zum abweichenden Rechnungsempfänger'
      CAAddressIDOfAltvInvoiceRcpnt  : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Währung'
      @Common.QuickInfo                 : 'Währung des Abbuchungslimits'
      CACurrencyForDirectDebitLimit  : String(3) not null;

      @Measures.ISOCurrency             : CACurrencyForDirectDebitLimit
      @Common.Label                     : 'Abbuchungslimit'
      CADirectDebitLimit             : Decimal (precision : 13) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Anzahl Monate'
      @Common.Heading                   : 'Monate'
      @Common.QuickInfo                 : 'Anzahl Monate für Berechnung des Abbuchungslimits'
      CANmbrMnthsForDirectDebitLimit : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgDrctDebitLmtCalcMode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Rollierend'
      @Common.QuickInfo                 : 'Rollierende Berechnung des Abbuchungslimits'
      CADirectDebitLimitCalcMode     : String(1) not null;

      @Common.Label                     : 'Startdatum'
      @Common.Heading                   : 'Startdat.'
      @Common.QuickInfo                 : 'Startdatum der ersten Abrechnungsperiode'
      CAStartDateForBillingPeriod    : Date;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zielwährung Fakt.'
      @Common.Heading                   : 'ZWäh.'
      @Common.QuickInfo                 : 'Zielwährung der Fakturierung'
      CATargetCurrencyForInvoicing   : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgInvoicingCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Fakturierungstyp'
      @Common.Heading                   : 'FaktTyp'
      CAInvcgCategory                : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgInvoicingSchedule'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Terminfindung'
      @Common.Heading                   : 'TermFdg'
      @Common.QuickInfo                 : 'Findungsmerkmal für die Terminsteuerung'
      CAInvcgSchedule                : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgBillingCycle'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Abrechnungszyklus'
      CABillgCycle                   : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Festgelegter Tag'
      @Common.QuickInfo                 : 'Tag des Periodenendes'
      CALastDayOfBillingPeriod       : String(2) not null;

      @Common.Label                     : 'Abw. Formularfindung'
      @Common.Heading                   : 'FormFindg'
      @Common.QuickInfo                 : 'Findungsmerkmal für abweichendes Rechnungsformular'
      CADetnCodeForAltvInvoiceForm   : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Buchen auf Partner'
      @Common.QuickInfo                 : 'Geschäftspartner für die Buchung der Rechnung'
      CABusinessPartnerForPosting    : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Vertragskonto'
      @Common.Heading                   : 'Vertragskonto RechnEmpfg'
      @Common.QuickInfo                 : 'Vertragskonto des Rechnungsempfängers'
      ContractAccountForPosting      : String(12) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Empfänger'
      @Common.Heading                   : 'Fakturierungsliste an Partner'
      @Common.QuickInfo                 : 'Empfänger der Fakturierungsliste'
      CABusinessPartnerForInvcgList  : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Vertragskonto'
      @Common.Heading                   : 'Fakturierungsliste an Vertragskonto'
      @Common.QuickInfo                 : 'Vertragskonto des Empfängers der Fakturierungsliste'
      ContractAccountForInvcgList    : String(12) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Rahmenvertrag'
      @Common.QuickInfo                 : 'Identifikation des Rahmenvertrages'
      CAMasterAgreement              : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgPrtnSettlementRule'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Abrechnungsregel'
      @Common.Heading                   : 'Partnerabrechnungsregel'
      @Common.QuickInfo                 : 'Partnerabrechnungsregel'
      CAPartnerSettlementRule        : String(4) not null;

      @Common.Label                     : 'Befristet bis'
      @Common.Heading                   : 'Befr.bis'
      @Common.QuickInfo                 : 'Gültigkeitsdatum für Quellsteuerbefreiungs-Zertifikat'
      ValdtyDateForWhldgTaxExmpCert  : Date;

      @Common.SAPObjectNodeTypeReference: 'TaxJurisdiction'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Steuerstandort'
      TaxJurisdiction                : String(15) not null;

      @Common.SAPObjectNodeTypeReference: 'WithholdingTaxCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Qst.Kennz. AusgZahl'
      @Common.Heading                   : 'QKA'
      @Common.QuickInfo                 : 'Quellensteuerkennzeichen für Zahlungsausgänge'
      CAWhldgTaxCodeOutgoingPayt     : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'WithholdingTaxCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Qst.Kennz. EingZahl'
      @Common.Heading                   : 'QKE'
      @Common.QuickInfo                 : 'Quellensteuerkennzeichen für Zahlungseingänge'
      CAWhldgTaxCodeIncomingPayt     : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'QST-Zertifikat'
      @Common.Heading                   : 'Quellensteuerzertifikat'
      @Common.QuickInfo                 : 'Quellensteuerzertifikat'
      WithholdingTaxCertificate      : String(10) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'ZusatztageFDispo'
      @Common.Heading                   : 'ZF'
      @Common.QuickInfo                 : 'Zusatztage Finanzdisposition'
      CAAdditionalDaysForCashMgmt    : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgBPPostgLockExstcCode'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Buch-/Ausgl.sperre'
      @Common.Heading                   : 'Buch-/Ausgl.sp.'
      @Common.QuickInfo                 : 'Geschäftspartnersperre für Buchungen/Ausgleiche'
      CABusPartnerPostgLockExstcCode : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgBPAddlLockExstcCode'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mahn/Zahlsperre'
      @Common.QuickInfo                 : 'Geschäftspartnersperre für Mahnung / Zahlung'
      CABusPartnerAddlLockExstcCode  : String(1) not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Von'
      @Common.QuickInfo                 : 'Sperre gültig von'
      CABusinessPartnerLockStartDate : Date;

      @Core.Computed                    : true
      @Common.Label                     : 'Bis'
      @Common.QuickInfo                 : 'Sperre gültig bis'
      CABusinessPartnerLockEndDate   : Date;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Referenznummer'
      @Common.QuickInfo                 : 'Referenznummer zum Geschäftspartner'
      CABPReferenceNumber            : String(25) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgCompanyCodeGroup'
      @Common.FieldControl              : #Mandatory
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Buchungskreisgruppe'
      CACompanyCodeGroup             : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'CompanyCode'
      @Common.FieldControl              : #Mandatory
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Standardbuchgskreis'
      @Common.Heading                   : 'Standardbuchungskreis'
      @Common.QuickInfo                 : 'Standardbuchungskreis'
      CAStandardCompanyCode          : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Sammelrechnungskonto'
      @Common.Heading                   : 'SammRechKonto'
      @Common.QuickInfo                 : 'Abweichendes Vertragskonto für Sammelrechnungen'
      AltvContractAcctForCollvBills  : String(12) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgInterestCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zinsschlüssel'
      @Common.Heading                   : 'ZS'
      CAInterestCode                 : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Dispositionsgruppe'
      @Common.Heading                   : 'FDGruppe'
      CashPlanningGroup              : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'ContractAccountPrtnRelshpType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'VrtrgsKontobeziehung'
      @Common.Heading                   : 'Kontobeziehung'
      @Common.QuickInfo                 : 'Beziehung eines Geschäftspartners zum Vertragskonto'
      CARelationshipOfBPToContrAcct  : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Adressnummer'
      @Common.Heading                   : 'Adressnum.'
      AddressID                      : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'JurisdicCode-Adresse'
      @Common.QuickInfo                 : 'Adressnummer zur Adresse des Jurisdiction Code'
      CAAddressIDOfJurisdictionCode  : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgAuthorizationGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Berechtigungsgruppe'
      @Common.Heading                   : 'BGrp'
      CAAuthorizationGroup           : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgToleranceGroup'
      @Common.FieldControl              : #Mandatory
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Toleranzgruppe'
      @Common.QuickInfo                 : 'Toleranzgruppe für Vertragskonto'
      CAToleranceGroup               : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgCorrespncVariant'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'KorrespVariante'
      @Common.Heading                   : 'Variante'
      @Common.QuickInfo                 : 'Korrespondenzvariante'
      CACorrespondenceVariant        : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Partnergesellschaft'
      @Common.QuickInfo                 : 'Gesellschaftsnummer des Partners'
      PartnerCompany                 : String(6) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgCorrespncActyCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Aktivität'
      @Common.Heading                   : 'Akt.'
      @Common.QuickInfo                 : 'Korrespondenz - Aktivitätenschlüssel'
      CACorrespondenceActivityCode   : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgClearingCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Verrechnungstyp'
      @Common.Heading                   : 'VerTyp'
      @Common.QuickInfo                 : 'Verrechnungstyp bei Ausgleichsbuchungen'
      CAClearingCategory             : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgDfltClrgRstrcnCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Ausgleichrestriktion'
      @Common.Heading                   : 'AugRestrik'
      @Common.QuickInfo                 : 'Ausgleichsrestriktion'
      CADefaultClearingRstrcnCode    : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Lieferland/-region'
      SupplyingCountry               : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'BusinessPlace'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Geschäftsort'
      @Common.Heading                   : 'GOrt'
      BusinessPlace                  : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'PaymentCondition'
      @Common.FieldControl              : #Mandatory
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zahlungskondition'
      @Common.Heading                   : 'ZKond'
      PaymentCondition               : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ContrAcctgAccountDetnCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'KontenfindMerkmal'
      @Common.Heading                   : 'KF'
      @Common.QuickInfo                 : 'Kontenfindungsmerkmal'
      CAAccountDeterminationCode     : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'BusinessArea'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Geschäftsbereich'
      BusinessArea                   : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'CompanyCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Zahlender Buchungskr'
      @Common.Heading                   : 'Zahlender Buchungskreis'
      @Common.QuickInfo                 : 'Buchungskreis für den automatischen Zahlungsverkehr'
      CAPaymentCompanyCode           : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Länder-/RegSchlüssel'
      @Common.Heading                   : 'L/R'
      @Common.QuickInfo                 : 'Länder-/Regionenschlüssel'
      Country                        : String(3) not null;
      _BusinessPartner               : Association to one payint_s4hana.A_BusinessPartner {};
      _ContractAccount               : Association to one payint_s4hana.A_ContractAccount {};
};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.Label                                                : 'value help contract accound'
@Capabilities.SearchRestrictions.Searchable                  : false
@Capabilities.InsertRestrictions.Insertable                  : false
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.Updatable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
entity payint_s4hana.ContractAccount_VH {
      @Common.Label      : 'Vertragskonto'
      @Common.IsUpperCase: true
      @Common.Heading    : 'Vertragskont'
      @Common.QuickInfo  : 'Vertragskontonummer'
  key vkont     : String(12) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Geschäftspartner'
      @Common.QuickInfo  : 'Geschäftspartnernummer'
  key partner   : String(10) not null;

      @Common.Label      : 'Name 1'
      @Common.IsUpperCase: true
      @Common.Heading    : 'Name1/Nachname'
      @Common.QuickInfo  : 'Suchhilfefeld 1 (Name 1/Nachname)'
  key mc_name1  : String(35) not null;

      @Common.Label      : 'Name 2'
      @Common.IsUpperCase: true
      @Common.Heading    : 'Name2/Vorname'
      @Common.QuickInfo  : 'Suchhilfefeld 2 (Name 2/Vorname)'
  key mc_name2  : String(35) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Ort'
      @Common.QuickInfo  : 'Ortsname in Großbuchstaben für Suchhilfe'
  key mc_city   : String(25) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Postleitzahl'
      @Common.Heading    : 'PLZ'
      @Common.QuickInfo  : 'Postleitzahl des Orts'
  key post_code : String(10) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Straße'
      @Common.QuickInfo  : 'Straßenname in Großbuchstaben für Suchhilfe'
  key mc_street : String(25) not null;

      @Common.Label      : 'Hausnummer'
  key house_num : String(10) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Länder-/RegSchlüssel'
      @Common.Heading    : 'L/R'
      @Common.QuickInfo  : 'Länder-/Regionenschlüssel'
  key country   : String(3) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Postfach'
  key po_box    : String(10) not null;

      @Common.Label      : 'Text'
      @Common.QuickInfo  : 'Text, 255 Zeichen'
      fullname  : String(255) not null;
};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.Label                                                : 'Sparte'
@Common.SAPObjectNodeType                                    : {Name: 'Division'}
@Capabilities.SearchRestrictions.Searchable                  : true
@Capabilities.SearchRestrictions.UnsupportedExpressions      : #phrase
@Capabilities.FilterRestrictions.NonFilterableProperties     : ['DivisionOID']
@Capabilities.SortRestrictions.NonSortableProperties         : ['DivisionOID']
@Capabilities.InsertRestrictions.Insertable                  : false
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.Updatable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
entity payint_s4hana.Division_VH {
      @Common.Text       : Division_Text
      @Common.IsUpperCase: true
      @Common.Label      : 'Sparte'
      @Common.Heading    : 'SP'
  key Division      : String(2) not null;

      @Core.Computed     : true
      @Common.Label      : 'Beschreibung der Sparte'
      Division_Text : String(20) not null;

      @Common.Label      : 'Objekt-ID für Sparte'
      DivisionOID   : String(128) not null;
};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.Label                                                : 'Payment Integration BTP Requests'
@Common.Messages                                             : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                  : false
@Capabilities.FilterRestrictions.Filterable                  : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions: [
  {
    Property          : Payload,
    AllowedExpressions: 'SearchExpression'
  },
  {
    Property          : Response,
    AllowedExpressions: 'SearchExpression'
  }
]
@Capabilities.SortRestrictions.NonSortableProperties         : [
  'Payload',
  'Response'
]
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
entity payint_s4hana.PaymentRequest_Log {
      @Core.Computed         : true
      @Common.IsDigitSequence: true
      @Common.Label          : 'Reference-ID'
      @Common.QuickInfo      : 'DSC PI BTP: Reference-ID (von SAP vergebene Nr.)'
  key ReferenceId               :      String(20) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Geschäftspartner'
      @Common.QuickInfo      : 'Geschäftspartnernummer'
      Partner                   :      String(10) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Vertragskonto'
      @Common.Heading        : 'VertrKto'
      Account                   :      String(12) not null;

      @Common.Label          : 'SourceType'
      @Common.QuickInfo      : 'DSC PI BTP: SOURCETYPE'
      OriginatorsourcetypeCode  :      String(10) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'SourceID"'
      @Common.QuickInfo      : 'DSC PI BTP: SourceID'
      Originatorsourceid        :      String(255) not null;

      @Common.Label          : 'SourceType'
      @Common.QuickInfo      : 'DSC PI BTP: SOURCETYPE'
      OriginatorprocesstypeCode :      String(10) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'ID von BTP'
      @Common.QuickInfo      : 'DSC PI BTP: ID von BTP'
      Originatorpaymentid       :      String(36) not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Buchungskreis'
      @Common.Heading        : 'BuKr'
      CompanyCode               :      String(4) not null;
      Payload                   :      LargeString not null;
      Response                  :      LargeString not null;

      @Common.Label          : 'Zahlungsstatus'
      @Common.Heading        : 'Status der Zahlung'
      @Common.QuickInfo      : 'DSC PI BTP: Zahlungsstatus'
      Status                    :      String(10) not null;

      @Common.Label          : 'Angelegt am'
      @Common.Heading        : 'Angel.am'
      @Common.QuickInfo      : 'Datum, an dem der Satz hinzugefügt wurde'
      CreatedDate               :      Date;

      @Common.Label          : 'Angelegt um'
      @Common.Heading        : 'Eröff.ZT'
      @Common.QuickInfo      : 'Uhrzeit, zu der der Satz hinzugefügt wurde'
      CreatedTime               :      Time not null;

      @Common.IsUpperCase    : true
      @Common.Label          : 'Angelegt von'
      @Common.Heading        : 'Angel.von'
      @Common.QuickInfo      : 'Name des Sachbearbeiters, der das Objekt hinzugefügt hat'
      CreatedBy                 :      String(12) not null;
      SAP__Messages             : many payint_s4hana.SAP__Message not null;
} actions {
  action statusChanged(_it : $self not null,
                       @Common.Label:'Text 36 Stellen'
                       ID : String(36) not null,
                       @Common.Label:'Originator'
                       @Common.QuickInfo:'DSC PI BTP: ORIGINATOR'
                       ORIGINATOR_ID : String(40) not null,
                       @Common.Label:'ID von BTP'
                       @Common.QuickInfo:'DSC PI BTP: ID von BTP'
                       ORIGINATORPAYMENTEXTERNALNO : String(36) not null,
                       @Common.Label:'SourceType'
                       @Common.QuickInfo:'DSC PI BTP: SOURCETYPE'
                       ORIGINATORSOURCETYPE_CODE : String(10) not null,
                       @Common.Label:'SourceID"'
                       @Common.QuickInfo:'DSC PI BTP: SourceID'
                       ORIGINATORSOURCEEXTERNALNO : String(255) not null,
                       @Common.Label:'char20'
                       @Common.QuickInfo:'Char 20'
                       SETTING_FEEPAYEE_CODE : String(20) not null,
                       DESCR : String(80) not null,
                       @Common.Label:'Zahlungsstatus'
                       @Common.Heading:'Status der Zahlung'
                       @Common.QuickInfo:'DSC PI BTP: Zahlungsstatus'
                       STATUS_CODE : String(10) not null,
                       IDENTIFIER : many payint_s4hana.xDSCxPI_BTP_S_IDENTIFIER not null,
                       DESCR_PO : LargeString not null,
                       @Common.Label:'Betrag'
                       BASEAMOUNT_PO : Decimal (precision : 13) not null,
                       @Common.Label:'Betrag'
                       FEEAMOUNT_PO : Decimal (precision : 13) not null,
                       @Common.Label:'Betrag'
                       TOTALAMOUNT_PO : Decimal (precision : 13) not null,
                       @Common.Label:'Betrag'
                       PAYEDAMOUNT_PO : Decimal (precision : 13) not null,
                       @Common.IsCurrency:true
                       @Common.Label:'Währung'
                       @Common.Heading:'Währg'
                       @Common.QuickInfo:'Währungsschlüssel'
                       CURRENCY_CODE_PO : String(3) not null,
                       @Common.Label:'Zahlungsstatus'
                       @Common.Heading:'Status der Zahlung'
                       @Common.QuickInfo:'DSC PI BTP: Zahlungsstatus'
                       STATUS_PO : String(10) not null,
                       @Common.Label:'ISO-Timestamp in UTC'
                       @Common.Heading:'Timestamp nach ISO 8601 in UTC YYYY-MM-DDThh:mm:ssZ'
                       @Common.QuickInfo:'DSC PI BTP: Timestamp ISO 8601 in UTC YYYY-MM-DDThh:mm:ssZ'
                       DUEDATE_PO : String(20) not null,
                       @Common.Label:'Provider'
                       @Common.QuickInfo:'DSC PI BTP: Provider'
                       PAYMENTPROVIDER_PO : String(40) not null,
                       @Common.Label:'Zahlungsanbieter'
                       @Common.QuickInfo:'DSC PI BTP: Zahlungsanbieter'
                       PAYMENTMETHOD_PO : String(20) not null,
                       @Common.Label:'Characterfeld der Länge 10'
                       POSTINGTYPE_PO : String(10) not null);
};

@cds.external                                                : true
@cds.persistence.skip                                        : true
@Common.ResultContext                                        : true
@Capabilities.NavigationRestrictions.RestrictedProperties    : [{
  NavigationProperty: Set,
  InsertRestrictions: {Insertable: false},
  UpdateRestrictions: {Updatable: false},
  DeleteRestrictions: {Deletable: false}
}]
@Capabilities.SearchRestrictions.Searchable                  : false
@Capabilities.FilterRestrictions.NonFilterableProperties     : ['vkonto']
@Capabilities.SortRestrictions.NonSortableProperties         : ['vkonto']
@Capabilities.ReadRestrictions.Readable                      : false
@Capabilities.InsertRestrictions.Insertable                  : false
@Capabilities.DeleteRestrictions.Deletable                   : false
@Capabilities.UpdateRestrictions.Updatable                   : false
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported: true
entity payint_s4hana.PI10_OpenItems {
      @Common.Label      : 'Vertragskonto'
      @Common.QuickInfo  : 'Vertragskonto'
      @Core.Computed     : true
      @Common.IsUpperCase: true
      @Common.Heading    : 'Vertragskont'
  key vkonto : String(12) not null;
      Set    : Association to many payint_s4hana.PI10_OpenItemsType {};
};
