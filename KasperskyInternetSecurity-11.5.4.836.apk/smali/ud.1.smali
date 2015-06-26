.class public abstract Lud;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:[Ljava/lang/Class;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/reflect/Method;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lud;->e:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lud;->d:[Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lud;->a:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lud;->b:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Lud;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lud;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lud;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    sget-object v2, Lud;->e:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lud;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    iput-object v3, p0, Lud;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    iput-object v3, p0, Lud;->c:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lud;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lud;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    .line 131
    iget-object v0, p0, Lud;->d:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 132
    iget-object v0, p0, Lud;->d:[Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    iget-object v0, p0, Lud;->d:[Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 134
    iget-object v0, p0, Lud;->d:[Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 135
    iget-object v0, p0, Lud;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lud;->a:Landroid/app/Activity;

    iget-object v2, p0, Lud;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lud;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 146
    :try_start_1
    iget-object v0, p0, Lud;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const-string v1, "PurchaseObserver"

    const-string v2, "error starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "PurchaseObserver"

    const-string v1, "error starting activity (context is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract a(Lcom/kms/licensing/iapurchase/Consts$PurchaseState;)V
.end method

.method public abstract a(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
.end method

.method final a(Ljava/lang/String;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 10

    .prologue
    .line 171
    iget-object v9, p0, Lud;->b:Landroid/os/Handler;

    new-instance v0, Lue;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lue;-><init>(Lud;Ljava/lang/String;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method public abstract a(ZLjava/lang/String;)V
.end method

.method public abstract b(Lcom/kms/licensing/iapurchase/Consts$ResponseCode;)V
.end method
