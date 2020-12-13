.class public Lfr/drangies/cordova/serial/UsbBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbBroadcastReceiver.java"


# static fields
.field public static final USB_PERMISSION:Ljava/lang/String; = "fr.drangies.cordova.serial.USB_PERMISSION"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CallbackContext;Landroid/app/Activity;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-class v0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 33
    iput-object p2, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fr.drangies.cordova.serial.USB_PERMISSION"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "permission"

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Permission to connect to the device was accepted!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string p2, "Permission to connect to the device was accepted!"

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Permission to connect to the device was denied!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string p2, "Permission to connect to the device was denied!"

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 57
    :goto_0
    iget-object p1, p0, Lfr/drangies/cordova/serial/UsbBroadcastReceiver;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
