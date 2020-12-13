.class public Lfr/drangies/cordova/serial/Serial;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Serial.java"


# static fields
.field private static final ACTION_CLOSE:Ljava/lang/String; = "closeSerial"

.field private static final ACTION_OPEN:Ljava/lang/String; = "openSerial"

.field private static final ACTION_READ:Ljava/lang/String; = "readSerial"

.field private static final ACTION_READ_CALLBACK:Ljava/lang/String; = "registerReadCallback"

.field private static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "requestPermission"

.field private static final ACTION_WRITE:Ljava/lang/String; = "writeSerial"

.field private static final ACTION_WRITE_HEX:Ljava/lang/String; = "writeSerialHex"

.field private static final BUFSIZ:I = 0x1000

.field private static final READ_WAIT_MILLIS:I = 0xc8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private baudRate:I

.field private dataBits:I

.field private driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mListener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

.field private final mReadBuffer:Ljava/nio/ByteBuffer;

.field private mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

.field private manager:Landroid/hardware/usb/UsbManager;

.field private parity:I

.field private port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

.field private readCallback:Lorg/apache/cordova/CallbackContext;

.field private setDTR:Z

.field private setRTS:Z

.field private sleepOnPause:Z

.field private stopBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 44
    const-class v0, Lfr/drangies/cordova/serial/Serial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const/16 v0, 0x1000

    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v0, Lfr/drangies/cordova/serial/Serial$1;

    invoke-direct {v0, p0}, Lfr/drangies/cordova/serial/Serial$1;-><init>(Lfr/drangies/cordova/serial/Serial;)V

    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mListener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lfr/drangies/cordova/serial/Serial;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lfr/drangies/cordova/serial/Serial;[B)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lfr/drangies/cordova/serial/Serial;->updateReceivedData([B)V

    return-void
.end method

.method static synthetic access$1000(Lfr/drangies/cordova/serial/Serial;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lfr/drangies/cordova/serial/Serial;->setRTS:Z

    return p0
.end method

.method static synthetic access$1002(Lfr/drangies/cordova/serial/Serial;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->setRTS:Z

    return p1
.end method

.method static synthetic access$1102(Lfr/drangies/cordova/serial/Serial;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->sleepOnPause:Z

    return p1
.end method

.method static synthetic access$1200(Lfr/drangies/cordova/serial/Serial;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lfr/drangies/cordova/serial/Serial;->onDeviceStateChange()V

    return-void
.end method

.method static synthetic access$1300(Lfr/drangies/cordova/serial/Serial;Ljava/lang/String;)[B
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lfr/drangies/cordova/serial/Serial;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lfr/drangies/cordova/serial/Serial;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 42
    iget-object p0, p0, Lfr/drangies/cordova/serial/Serial;->mReadBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1502(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 42
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial;->readCallback:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$1600(Lfr/drangies/cordova/serial/Serial;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lfr/drangies/cordova/serial/Serial;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lfr/drangies/cordova/serial/Serial;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lfr/drangies/cordova/serial/Serial;->manager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method static synthetic access$202(Lfr/drangies/cordova/serial/Serial;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 42
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial;->manager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$300(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 0

    .line 42
    iget-object p0, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    return-object p0
.end method

.method static synthetic access$302(Lfr/drangies/cordova/serial/Serial;Lcom/hoho/android/usbserial/driver/UsbSerialDriver;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 0

    .line 42
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    return-object p1
.end method

.method static synthetic access$400(Lfr/drangies/cordova/serial/Serial;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;
    .locals 0

    .line 42
    iget-object p0, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    return-object p0
.end method

.method static synthetic access$402(Lfr/drangies/cordova/serial/Serial;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)Lcom/hoho/android/usbserial/driver/UsbSerialPort;
    .locals 0

    .line 42
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    return-object p1
.end method

.method static synthetic access$500(Lfr/drangies/cordova/serial/Serial;)I
    .locals 0

    .line 42
    iget p0, p0, Lfr/drangies/cordova/serial/Serial;->baudRate:I

    return p0
.end method

.method static synthetic access$502(Lfr/drangies/cordova/serial/Serial;I)I
    .locals 0

    .line 42
    iput p1, p0, Lfr/drangies/cordova/serial/Serial;->baudRate:I

    return p1
.end method

.method static synthetic access$600(Lfr/drangies/cordova/serial/Serial;)I
    .locals 0

    .line 42
    iget p0, p0, Lfr/drangies/cordova/serial/Serial;->dataBits:I

    return p0
.end method

.method static synthetic access$602(Lfr/drangies/cordova/serial/Serial;I)I
    .locals 0

    .line 42
    iput p1, p0, Lfr/drangies/cordova/serial/Serial;->dataBits:I

    return p1
.end method

.method static synthetic access$700(Lfr/drangies/cordova/serial/Serial;)I
    .locals 0

    .line 42
    iget p0, p0, Lfr/drangies/cordova/serial/Serial;->stopBits:I

    return p0
.end method

.method static synthetic access$702(Lfr/drangies/cordova/serial/Serial;I)I
    .locals 0

    .line 42
    iput p1, p0, Lfr/drangies/cordova/serial/Serial;->stopBits:I

    return p1
.end method

.method static synthetic access$800(Lfr/drangies/cordova/serial/Serial;)I
    .locals 0

    .line 42
    iget p0, p0, Lfr/drangies/cordova/serial/Serial;->parity:I

    return p0
.end method

.method static synthetic access$802(Lfr/drangies/cordova/serial/Serial;I)I
    .locals 0

    .line 42
    iput p1, p0, Lfr/drangies/cordova/serial/Serial;->parity:I

    return p1
.end method

.method static synthetic access$900(Lfr/drangies/cordova/serial/Serial;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lfr/drangies/cordova/serial/Serial;->setDTR:Z

    return p0
.end method

.method static synthetic access$902(Lfr/drangies/cordova/serial/Serial;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->setDTR:Z

    return p1
.end method

.method private addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 558
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private addPropertyBytes(Lorg/json/JSONObject;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x2

    .line 570
    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    .line 571
    invoke-direct {p0, p1, p2, p3}, Lfr/drangies/cordova/serial/Serial;->addProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private closeSerial(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$7;

    invoke-direct {v1, p0, p1}, Lfr/drangies/cordova/serial/Serial$7;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 339
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 341
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 342
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private onDeviceStateChange()V
    .locals 0

    .line 437
    invoke-direct {p0}, Lfr/drangies/cordova/serial/Serial;->stopIoManager()V

    .line 438
    invoke-direct {p0}, Lfr/drangies/cordova/serial/Serial;->startIoManager()V

    return-void
.end method

.method private openSerial(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$3;

    invoke-direct {v1, p0, p1, p2}, Lfr/drangies/cordova/serial/Serial$3;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readSerial(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$6;

    invoke-direct {v1, p0, p1}, Lfr/drangies/cordova/serial/Serial$6;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerReadCallback(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const-string v1, "Registering callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$8;

    invoke-direct {v1, p0, p1}, Lfr/drangies/cordova/serial/Serial$8;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestPermission(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$2;

    invoke-direct {v1, p0, p1, p2}, Lfr/drangies/cordova/serial/Serial$2;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startIoManager()V
    .locals 3

    .line 426
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const-string v1, "Starting io manager."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v0, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial;->mListener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;-><init>(Lcom/hoho/android/usbserial/driver/UsbSerialPort;Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;)V

    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    .line 429
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private stopIoManager()V
    .locals 2

    .line 415
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const-string v1, "Stopping io manager."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;->stop()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    :cond_0
    return-void
.end method

.method private updateReceivedData([B)V
    .locals 2

    .line 446
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->readCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[B)V

    const/4 p1, 0x1

    .line 448
    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 449
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->readCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_0
    return-void
.end method

.method private writeSerial(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$4;

    invoke-direct {v1, p0, p2, p1}, Lfr/drangies/cordova/serial/Serial$4;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeSerialHex(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lfr/drangies/cordova/serial/Serial$5;

    invoke-direct {v1, p0, p2, p1}, Lfr/drangies/cordova/serial/Serial$5;-><init>(Lfr/drangies/cordova/serial/Serial;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "requestPermission"

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string p1, "opts"

    .line 105
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "opts"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :goto_0
    invoke-direct {p0, p1, p3}, Lfr/drangies/cordova/serial/Serial;->requestPermission(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_1
    const-string v1, "openSerial"

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "opts"

    .line 111
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "opts"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :goto_1
    invoke-direct {p0, p1, p3}, Lfr/drangies/cordova/serial/Serial;->openSerial(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_3
    const-string v1, "writeSerial"

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "data"

    .line 117
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-direct {p0, p1, p3}, Lfr/drangies/cordova/serial/Serial;->writeSerial(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_4
    const-string v1, "writeSerialHex"

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "data"

    .line 123
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1, p3}, Lfr/drangies/cordova/serial/Serial;->writeSerialHex(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_5
    const-string p2, "readSerial"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 129
    invoke-direct {p0, p3}, Lfr/drangies/cordova/serial/Serial;->readSerial(Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_6
    const-string p2, "closeSerial"

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 134
    invoke-direct {p0, p3}, Lfr/drangies/cordova/serial/Serial;->closeSerial(Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_7
    const-string p2, "registerReadCallback"

    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 139
    invoke-direct {p0, p3}, Lfr/drangies/cordova/serial/Serial;->registerReadCallback(Lorg/apache/cordova/CallbackContext;)V

    return v2

    :cond_8
    return v0
.end method

.method public onDestroy()V
    .locals 3

    .line 538
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroy, port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_0

    .line 541
    :try_start_0
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 544
    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    :goto_0
    invoke-direct {p0}, Lfr/drangies/cordova/serial/Serial;->onDeviceStateChange()V

    return-void
.end method

.method public onPause(Z)V
    .locals 0

    .line 479
    iget-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->sleepOnPause:Z

    if-eqz p1, :cond_0

    .line 480
    invoke-direct {p0}, Lfr/drangies/cordova/serial/Serial;->stopIoManager()V

    .line 481
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    invoke-interface {p1}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 487
    iput-object p1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 4

    .line 499
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resumed, driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->sleepOnPause:Z

    if-eqz p1, :cond_4

    .line 501
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    if-nez p1, :cond_0

    .line 502
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const-string v0, "No serial device to resume."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 505
    :cond_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->manager:Landroid/hardware/usb/UsbManager;

    invoke-interface {p1}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 508
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    iput-object v0, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 510
    :try_start_0
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0, p1}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 511
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    iget v0, p0, Lfr/drangies/cordova/serial/Serial;->baudRate:I

    iget v1, p0, Lfr/drangies/cordova/serial/Serial;->dataBits:I

    iget v2, p0, Lfr/drangies/cordova/serial/Serial;->stopBits:I

    iget v3, p0, Lfr/drangies/cordova/serial/Serial;->parity:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V

    .line 512
    iget-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->setDTR:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {p1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setDTR(Z)V

    .line 513
    :cond_1
    iget-boolean p1, p0, Lfr/drangies/cordova/serial/Serial;->setRTS:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->port:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {p1, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setRTS(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 517
    iget-object v0, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2
    :goto_0
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const-string v0, "Serial port opened!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    :cond_3
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    const-string v0, "Cannot connect to the device!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_1
    iget-object p1, p0, Lfr/drangies/cordova/serial/Serial;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serial device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfr/drangies/cordova/serial/Serial;->driver:Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_2
    invoke-direct {p0}, Lfr/drangies/cordova/serial/Serial;->onDeviceStateChange()V

    :cond_4
    return-void
.end method
