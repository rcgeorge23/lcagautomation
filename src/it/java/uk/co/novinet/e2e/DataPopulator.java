package uk.co.novinet.e2e;

import static java.lang.Thread.sleep;
import static uk.co.novinet.e2e.TestUtils.insertUser;
import static uk.co.novinet.e2e.TestUtils.runSqlScript;

public class DataPopulator {

    public static void main(String[] args) throws Exception {
        int sqlRetryCounter = 0;
        boolean needToRetry = true;

        while (needToRetry && sqlRetryCounter < 20) {
            try {
                runSqlScript("sql/drop_user_table.sql");
                runSqlScript("sql/drop_enquiry_table.sql");
                runSqlScript("sql/create_user_table.sql");
                runSqlScript("sql/create_mp_details_table.sql");
                runSqlScript("sql/create_ffc_contributions_table.sql");
                runSqlScript("sql/create_enquiry_table.sql");
                runSqlScript("sql/create_usergroups_table.sql");
                runSqlScript("sql/populate_usergroups_table.sql");
                runSqlScript("sql/create_bank_transaction_table.sql");
                runSqlScript("sql/populate_bank_transaction_table.sql");
                needToRetry = false;
            } catch (Exception e) {
                sqlRetryCounter++;
                sleep(1000);
            }
        }

        for (int i = 1; i <= 200; i++) {
            insertUser(i, "testuser" + i, "user" + i + "@something.com", "Test Name" + i, 8);
        }

        for (int i = 201; i <= 210; i++) {
            insertUser(i, "testuser" + i, "user" + i + "@something.com", "Test Name" + i, 2);
        }

        insertUser(211, "testuser" + 211, "user" + 211 + "@something.com", "Test Name" + 211, 4);
    }

}
