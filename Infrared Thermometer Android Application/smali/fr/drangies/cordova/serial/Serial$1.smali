.class Lfr/drangies/cordova/serial/Serial$1;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/drangies/cordova/serial/Serial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/drangies/cordova/serial/Serial;


# direct methods
.method constructor <init>(Lfr/drangies/cordova/serial/Serial;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$1;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewData([B)V
    .locals 1

    .line 87
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$1;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0, p1}, Lfr/drangies/cordova/serial/Serial;->access$100(Lfr/drangies/cordova/serial/Serial;[B)V

    return-void
.end method

.method public onRunError(Ljava/lang/Exception;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial$1;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {p1}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Runner stopped."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
