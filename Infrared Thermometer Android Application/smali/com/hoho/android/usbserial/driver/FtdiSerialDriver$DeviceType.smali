.class final enum Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;
.super Ljava/lang/Enum;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_2232C:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_2232H:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_4232H:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_AM:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_BM:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_R:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 104
    new-instance v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const-string v1, "TYPE_BM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_BM:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const-string v1, "TYPE_AM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const-string v1, "TYPE_2232C"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const-string v1, "TYPE_R"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_R:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const-string v1, "TYPE_2232H"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const-string v1, "TYPE_4232H"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v0, 0x6

    .line 103
    new-array v0, v0, [Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_BM:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_R:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->$VALUES:[Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;
    .locals 1

    .line 103
    const-class v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;
    .locals 1

    .line 103
    sget-object v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->$VALUES:[Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    invoke-virtual {v0}, [Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$DeviceType;

    return-object v0
.end method
