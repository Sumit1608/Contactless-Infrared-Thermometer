.class public Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;
.super Ljava/lang/Object;
.source "Cp21xxSerialDriver.java"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cp21xxSerialDriver"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 46
    new-instance p1, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;-><init>(Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x10c4

    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :array_0
    .array-data 4
        0xea60
        0xea70
        0xea71
        0xea80
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
