import { Service } from "@sap/cds";
import cds from "@sap/cds";

export default async (srv: Service) => {
  const payints4hana = await cds.connect.to("payint_s4hana");

  srv.on("READ", "BusinessPartner", (req) => {
    return payints4hana.run(req.query);
  });
  srv.on("CREATE", "A", (req, next) => {});

  srv.on("READ", "B", async (req, next) => {});
};
