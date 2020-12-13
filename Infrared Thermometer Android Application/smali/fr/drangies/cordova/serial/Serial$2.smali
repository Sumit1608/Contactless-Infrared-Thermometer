.class Lfr/drangies/cordova/serial/Serial$2;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->requestPermission(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/drangies/cordova/serial/Serial;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$opts:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lfr/drangies/cordova/serial/Serial;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    iput-object p3, p0, Lfr/drangies/cordova/serial/Serial$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 154
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v1, v0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-static {v0, v1}, Lfr/drangies/cordova/serial/Serial;->access$202(Lfr/drangies/cordova/serial/Serial;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 157
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProbeTable;

    invoke-direct {v0}, Lcom/hoho/android/usbserial/driver/ProbeTable;-><init>()V

    .line 159
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    const-string v2, "vid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    const-string v3, "pid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    instance-of v3, v1, Ljava/lang/Number;

    const/16 v4, 0x10

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 162
    :goto_0
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 163
    :goto_1
    iget-object v3, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    const-string v4, "driver"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lfr/drangies/cordova/serial/Serial$2;->val$opts:Lorg/json/JSONObject;

    const-string v4, "driver"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v3, "CdcAcmSerialDriver"

    :goto_2
    const-string v4, "FtdiSerialDriver"

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    const-class v3, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    goto :goto_3

    :cond_3
    const-string v4, "CdcAcmSerialDriver"

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    const-class v3, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    goto :goto_3

    :cond_4
    const-string v4, "Cp21xxSerialDriver"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    const-class v3, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    goto :goto_3

    :cond_5
    const-string v4, "ProlificSerialDriver"

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 175
    const-class v3, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    goto :goto_3

    :cond_6
    const-string v4, "Ch34xSerialDriver"

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 178
    const-class v3, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    goto :goto_3

    .line 181
    :cond_7
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown driver!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Unknown driver!"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 185
    :goto_3
    new-instance v1, Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    invoke-direct {v1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;-><init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V

    goto :goto_4

    .line 190
    :cond_8
    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    move-result-object v1

    .line 193
    :goto_4
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$200(Lfr/drangies/cordova/serial/Serial;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 197
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    invoke-static {v1, v0}, Lfr/drangies/cordova/serial/Serial;->access$302(Lfr/drangies/cordova/serial/Serial;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    .line 198
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$300(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v0

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v1, v1, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "fr.drangies.cordova.serial.USB_PERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 202
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "fr.drangies.cordova.serial.USB_PERMISSION"

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    new-instance v3, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;

    iget-object v4, p0, Lfr/drangies/cordova/serial/Serial$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v5, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v5, v5, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;-><init>(Lorg/apache/cordova/CallbackContext;Landroid/app/Activity;)V

    .line 206
    iget-object v4, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v4, v4, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v2}, Lfr/drangies/cordova/serial/Serial;->access$200(Lfr/drangies/cordova/serial/Serial;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_5

    .line 212
    :cond_9
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No device found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "No device found!"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_5
    return-void
.end method
