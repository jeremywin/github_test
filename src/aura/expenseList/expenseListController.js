({
    update: function(component, evt, helper) {
      var expense = component.get("v.expense");
      //If you’re using a namespace, use e.myNamespace:updateExpenseItem instead
      var updateEvent = $A.get("e.c:updateExpenseItem");
      updateEvent.setParams({ "expense": expense }).fire();
    }
})