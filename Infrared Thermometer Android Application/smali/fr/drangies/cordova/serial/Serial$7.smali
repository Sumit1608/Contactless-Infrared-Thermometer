.class Lfr/drangies/cordova/serial/Serial$7;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->closeSerial(Lorg/apache/cordova/CallbackContext;)V
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

    .line 390
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$7;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    :try_start_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$7;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$7;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->close()V

    .line 397
    :cond_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$7;->this$0:Lfr/drangies/cordova/serial/Serial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/drangies/cordova/serial/Serial;->access$402(Lfr/drangies/cordova/serial/Serial;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 398
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 402
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$7;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 405
    :goto_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$7;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$1200(Lfr/drangies/cordova/serial/Serial;)V

    return-void
.end method
