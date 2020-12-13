.class Lfr/drangies/cordova/serial/Serial$5;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->writeSerialHex(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/drangies/cordova/serial/Serial;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$5;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lfr/drangies/cordova/serial/Serial$5;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$5;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Writing a closed port."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$5;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$5;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$5;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$5;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Lfr/drangies/cordova/serial/Serial;->access$1300(Lfr/drangies/cordova/serial/Serial;Ljava/lang/String;)[B

    move-result-object v0

    .line 314
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$5;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-interface {v1, v0, v2}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->write([BI)I

    move-result v0

    .line 315
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes written."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$5;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
