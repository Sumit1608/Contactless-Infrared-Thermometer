.class public Lorg/apache/cordova/dialogs/Notification;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Notification.java"


# static fields
.field private static final ACTION_ACTIVITY_START:Ljava/lang/String; = "activityStart"

.field private static final ACTION_ACTIVITY_STOP:Ljava/lang/String; = "activityStop"

.field private static final ACTION_ALERT:Ljava/lang/String; = "alert"

.field private static final ACTION_BEEP:Ljava/lang/String; = "beep"

.field private static final ACTION_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final ACTION_PROGRESS_START:Ljava/lang/String; = "progressStart"

.field private static final ACTION_PROGRESS_STOP:Ljava/lang/String; = "progressStop"

.field private static final ACTION_PROGRESS_VALUE:Ljava/lang/String; = "progressValue"

.field private static final ACTION_PROMPT:Ljava/lang/String; = "prompt"

.field private static final BEEP_TIMEOUT:J = 0x1388L

.field private static final BEEP_WAIT_TINE:J = 0x64L

.field private static final LOG_TAG:Ljava/lang/String; = "Notification"


# instance fields
.field public confirmResult:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lorg/apache/cordova/dialogs/Notification;->confirmResult:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->createDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/cordova/dialogs/Notification;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->changeTextDirection(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;)Landroid/app/ProgressDialog;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->createProgressDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private changeTextDirection(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 519
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 520
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const v0, 0x102000b

    .line 522
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x5

    .line 523
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_0
    return-void
.end method

.method private createDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 498
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 502
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private createProgressDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/ProgressDialog;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 510
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 512
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized activityStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 411
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 412
    new-instance v6, Lorg/apache/cordova/dialogs/Notification$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$5;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activityStop()V
    .locals 1

    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 178
    new-instance v7, Lorg/apache/cordova/dialogs/Notification$2;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/dialogs/Notification$2;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 203
    iget-object p1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beep(J)V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/dialogs/Notification$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/dialogs/Notification$1;-><init>(Lorg/apache/cordova/dialogs/Notification;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 219
    new-instance v7, Lorg/apache/cordova/dialogs/Notification$3;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/dialogs/Notification$3;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 281
    iget-object p1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "beep"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/dialogs/Notification;->beep(J)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "alert"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/cordova/dialogs/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_2
    const-string v0, "confirm"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/cordova/dialogs/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_3
    const-string v0, "prompt"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/apache/cordova/dialogs/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_4
    const-string v0, "activityStart"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/dialogs/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "activityStop"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {p0}, Lorg/apache/cordova/dialogs/Notification;->activityStop()V

    goto :goto_0

    :cond_6
    const-string v0, "progressStart"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/dialogs/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "progressValue"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->progressValue(I)V

    goto :goto_0

    :cond_8
    const-string p2, "progressStop"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 123
    invoke-virtual {p0}, Lorg/apache/cordova/dialogs/Notification;->progressStop()V

    .line 130
    :goto_0
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v1

    :cond_9
    return v2
.end method

.method public declared-synchronized progressStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 453
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 454
    new-instance v6, Lorg/apache/cordova/dialogs/Notification$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$6;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized progressStop()V
    .locals 1

    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressValue(I)V
    .locals 1

    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 9

    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 300
    new-instance v8, Lorg/apache/cordova/dialogs/Notification$4;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/cordova/dialogs/Notification$4;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 396
    iget-object p1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
