.class Lfr/drangies/cordova/serial/Serial$8;
.super Ljava/lang/Object;
.source "Serial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/drangies/cordova/serial/Serial;->registerReadCallback(Lorg/apache/cordova/CallbackContext;)V
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

    .line 459
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial$8;->this$0:Lfr/drangies/cordova/serial/Serial;

    iput-object p2, p0, Lfr/drangies/cordova/serial/Serial$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 461
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$8;->this$0:Lfr/drangies/cordova/serial/Serial;

    invoke-static {v0}, Lfr/drangies/cordova/serial/Serial;->access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registering Read Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$8;->this$0:Lfr/drangies/cordova/serial/Serial;

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lfr/drangies/cordova/serial/Serial;->access$1502(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    .line 463
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 464
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial$8;->this$0:Lfr/drangies/cordova/serial/Serial;

    const-string v2, "registerReadCallback"

    const-string v3, "true"

    invoke-static {v1, v0, v2, v3}, Lfr/drangies/cordova/serial/Serial;->access$1600(Lfr/drangies/cordova/serial/Serial;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    .line 467
    invoke-virtual {v1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 468
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method
