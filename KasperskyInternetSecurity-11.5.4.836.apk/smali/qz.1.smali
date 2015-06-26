.class public final Lqz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lqz;->b:Z

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sget v0, Lqz;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 60
    sput v0, Lqz;->a:I

    if-gez v0, :cond_0

    .line 61
    sput v1, Lqz;->a:I

    .line 64
    :cond_0
    sget v0, Lqz;->a:I

    if-nez v0, :cond_2

    .line 65
    sget-boolean v0, Lqz;->d:Z

    if-eqz v0, :cond_1

    .line 66
    sput-boolean v1, Lqz;->c:Z

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lqz;->b:Z

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lqz;->e:J

    .line 70
    :cond_1
    invoke-static {}, Lkr;->e()V

    .line 72
    :cond_2
    return-void
.end method

.method public static a(Lgn;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lgn;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lqz;->a(Z)V

    .line 109
    invoke-static {}, Lqz;->b()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lqz;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    :cond_1
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->a()Lmn;

    move-result-object v0

    .line 111
    invoke-static {}, Lso;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/AntivirusStateType;->Finished:Lcom/kms/antivirus/AntivirusStateType;

    if-ne v0, v1, :cond_2

    .line 112
    invoke-static {}, Lqz;->h()V

    .line 118
    :cond_2
    :goto_0
    return-void

    .line 116
    :cond_3
    invoke-static {v1}, Lqz;->a(Z)V

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x2bf20

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    sput-wide v2, Lqz;->e:J

    .line 39
    sput-boolean v4, Lqz;->b:Z

    .line 56
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-boolean v0, Lqz;->b:Z

    if-eqz v0, :cond_1

    sget-wide v0, Lqz;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lqz;->e:J

    sub-long/2addr v0, v2

    .line 44
    cmp-long v2, v0, v6

    if-ltz v2, :cond_3

    sget-boolean v2, Lqz;->c:Z

    if-nez v2, :cond_3

    .line 45
    sput-boolean v5, Lqz;->c:Z

    .line 46
    sput-boolean v4, Lqz;->d:Z

    .line 51
    :cond_1
    :goto_1
    sget v0, Lqz;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 52
    sput v0, Lqz;->a:I

    if-le v0, v5, :cond_2

    .line 53
    sput v5, Lqz;->a:I

    .line 55
    :cond_2
    sput-boolean v4, Lqz;->b:Z

    goto :goto_0

    .line 47
    :cond_3
    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    .line 48
    sput-boolean v4, Lqz;->c:Z

    goto :goto_1
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lqz;->a:I

    return v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lqz;->d:Z

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lqz;->c:Z

    .line 89
    const-wide/16 v0, 0x0

    sput-wide v0, Lqz;->e:J

    .line 90
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lqz;->d:Z

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lqz;->c:Z

    .line 95
    const-wide/16 v0, 0x0

    sput-wide v0, Lqz;->e:J

    .line 96
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lqz;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqz;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Z
    .locals 4

    .prologue
    .line 75
    sget-wide v0, Lqz;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lqz;->e:J

    sub-long/2addr v0, v2

    .line 77
    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lqz;->c:Z

    .line 79
    :cond_0
    sget-boolean v0, Lqz;->c:Z

    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lqz;->d:Z

    return v0
.end method

.method private static h()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v3

    .line 122
    const-string v0, "activity"

    invoke-virtual {v3, v0}, Lcom/kms/kmsshared/KMSApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 128
    const-class v6, Lcom/kms/KisMainActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 132
    :goto_0
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v4

    .line 133
    invoke-static {}, Lqz;->b()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/kms/rateus/gui/KMSRateUsActivity;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {v3, v0}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 142
    :goto_1
    invoke-virtual {v4}, Lso;->g_()V

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    goto :goto_1
.end method
