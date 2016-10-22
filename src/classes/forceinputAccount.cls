public with sharing class forceinputAccount {
	@AuraEnabled
	public static Account getAccount() {
		return [select Id, Name from Account limit 1];
	}
}