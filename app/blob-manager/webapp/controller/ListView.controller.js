sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("blobmanager.controller.ListView", {
        onInit() {
        },

        onPressScanBlob(oEvent){
            console.log("onPressScanBlob");

            let oButton = oEvent.getSource();
            let oContext = oButton.getBindingContext();
            let oRowData = oContext.getObject();
            
            sap.m.MessageToast.show("Scan blob for: " + oRowData.id);
        }
    });
});