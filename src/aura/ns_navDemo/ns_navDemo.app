<aura:application >
    <aura:attribute name="message" type="String" default="Hello"/>
    <aura:handler event="c:ns_navigateToView" action="{!c.navigateToView}"/>

    The message: <ui:inputText value="{!v.message}" updateOn="keyup"/>

    <div aura:id="content">
        <c:ns_fooView />
    </div> 

    <!-- Workaround for aura:dependency not being access="GLOBAL" to keep newCmpAsync() client side -->
    <aura:if isTrue="false"><c:ns_barView /></aura:if>
</aura:application>