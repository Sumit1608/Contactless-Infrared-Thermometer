.class Lfr/drangies/cordova/serial/Serial$4;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->writeSerial(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

    .line 276
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$4;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lfr/drangies/cordova/serial/Serial$4;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 278
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$4;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Writing a closed port."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$4;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$4;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$4;->val$data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 285
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$4;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-interface {v1, v0, v2}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->write([BI)I

    .line 286
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 290
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$4;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
