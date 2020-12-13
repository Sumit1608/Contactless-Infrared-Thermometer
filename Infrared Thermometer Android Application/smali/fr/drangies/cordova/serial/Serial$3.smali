.class Lfr/drangies/cordova/serial/Serial$3;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->openSerial(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
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

    .line 225
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    iput-object p3, p0, Lfr/drangies/cordova/serial/Serial$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 227
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$200(Lfr/drangies/cordova/serial/Serial;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$300(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v1

    invoke-interface {v1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 230
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$300(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v2

    invoke-interface {v2}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$402(Lfr/drangies/cordova/serial/Serial;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 233
    :try_start_0
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v4, "baudRate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v4, "baudRate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2580

    :goto_0
    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$502(Lfr/drangies/cordova/serial/Serial;I)I

    .line 234
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v4, "dataBits"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v4, "dataBits"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$602(Lfr/drangies/cordova/serial/Serial;I)I

    .line 235
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v4, "stopBits"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "stopBits"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$702(Lfr/drangies/cordova/serial/Serial;I)I

    .line 236
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "parity"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "parity"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$802(Lfr/drangies/cordova/serial/Serial;I)I

    .line 237
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "dtr"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "dtr"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$902(Lfr/drangies/cordova/serial/Serial;Z)Z

    .line 238
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "rts"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v5, "rts"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-static {v1, v3}, Lfr/drangies/cordova/serial/Serial;->access$1002(Lfr/drangies/cordova/serial/Serial;Z)Z

    .line 240
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v3, "sleepOnPause"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->val$opts:Lorg/json/JSONObject;

    const-string v3, "sleepOnPause"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    invoke-static {v1, v2}, Lfr/drangies/cordova/serial/Serial;->access$1102(Lfr/drangies/cordova/serial/Serial;Z)Z

    .line 242
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 243
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$500(Lfr/drangies/cordova/serial/Serial;)I

    move-result v1

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v2}, Lfr/drangies/cordova/serial/Serial;->access$600(Lfr/drangies/cordova/serial/Serial;)I

    move-result v2

    iget-object v3, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v3}, Lfr/drangies/cordova/serial/Serial;->access$700(Lfr/drangies/cordova/serial/Serial;)I

    move-result v3

    iget-object v5, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v5}, Lfr/drangies/cordova/serial/Serial;->access$800(Lfr/drangies/cordova/serial/Serial;)I

    move-result v5

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V

    .line 244
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$900(Lfr/drangies/cordova/serial/Serial;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setDTR(Z)V

    .line 245
    :cond_7
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$1000(Lfr/drangies/cordova/serial/Serial;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setRTS(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 254
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    .line 249
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 258
    :cond_8
    :goto_6
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Serial port opened!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Serial port opened!"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_7

    .line 262
    :cond_9
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot connect to the device!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Cannot connect to the device!"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 265
    :goto_7
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$3;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$1200(Lfr/drangies/cordova/serial/Serial;)V

    return-void
.end method
