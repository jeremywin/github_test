<aura:application >
    <ltng:require styles="/resource/SLDS090/assets/styles/salesforce-lightning-design-system-ltng.css" />
    <aura:attribute type="string" name="thisParam" />

    <p>I am showing the passed parameter: {!v.thisParam}</p>

    <div class="slds">
        <div class="slds-grid">
            <div class="slds-col--padded"><c:DF15_LightningAccountComponent /></div>    
            <div class="slds-col--padded"><c:DF15_LightningContactComponent /></div>    
        </div>
    </div>
    
</aura:application>