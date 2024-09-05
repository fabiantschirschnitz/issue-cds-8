using {com.dscgmbh.poc.replace_me as db} from '../db/schema';


service main_service {

  entity Belege          as projection on db.Belege;

  entity Positionen      as
    projection on db.Positionen {
      *,
      parent.status.code as parent_status_code
    };

  entity Arbeitsschritte as projection on db.Arbeitsschritte;
};
