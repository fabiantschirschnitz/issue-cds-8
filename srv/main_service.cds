using {com.dscgmbh.poc.replace_me as db} from '../db/schema';
using {payint_s4hana as payint_s4hana} from '../srv/external/payints4hana';


service main_service {

  entity Belege          as projection on db.Belege;

  entity Positionen      as
    projection on db.Positionen {
      *,
      parent.status.code as parent_status_code
    };

  entity Arbeitsschritte as projection on db.Arbeitsschritte;
  entity BusinessPartner as projection on payint_s4hana.A_BusinessPartner;
};
