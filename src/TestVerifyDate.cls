@isTest
private class TestVerifyDate {
    @isTest static void testCheckDatesOver30Days() {
        Date myDate1 = Date.newInstance(2001, 3, 21);
        Date myDate2 = Date.newInstance(2002, 3, 21);
        Date t = VerifyDate.CheckDates(myDate1,myDate2);
        Integer totalDays = Date.daysInMonth(myDate1.year(), myDate1.month());
        Date lastDay = Date.newInstance(myDate1.year(), myDate1.month(), totalDays);
        System.assertEquals(lastDay, t);
    }
    
    @isTest static void testCheckDatesWithin30Days() {
        Date myDate1 = Date.newInstance(2001, 3, 21);
        Date myDate2 = Date.newInstance(2001, 3, 28);
        Date t = VerifyDate.CheckDates(myDate1,myDate2);
        System.assertEquals(myDate2, t);
    }

}
