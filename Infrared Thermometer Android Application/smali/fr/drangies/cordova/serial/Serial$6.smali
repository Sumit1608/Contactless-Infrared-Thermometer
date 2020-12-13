.class Lfr/drangies/cordova/serial/Serial$6;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->readSerial(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/drangies/cordova/serial/Serial;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 354
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Reading a closed port."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$1400(Lfr/drangies/cordova/serial/Serial;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->read([BI)I

    move-result v0

    .line 362
    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 364
    iget-object v3, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v3}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read data len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-array v3, v0, [B

    .line 366
    iget-object v4, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v4}, Lfr/drangies/cordova/serial/Serial;->access$1400(Lfr/drangies/cordova/serial/Serial;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 367
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$1400(Lfr/drangies/cordova/serial/Serial;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 368
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/PluginResult;

    invoke-direct {v2, v1, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[B)V

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 371
    :cond_1
    new-array v0, v2, [B

    .line 372
    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    invoke-direct {v3, v1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[B)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 377
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$6;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
