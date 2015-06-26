.class public final LoR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax;


# static fields
.field private static a:I

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:LoR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, LoR;->a:I

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LoR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    const/4 v0, 0x0

    sput-object v0, LoR;->d:LoR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput v0, LoR;->a:I

    .line 124
    return-void
.end method

.method public static a(LsQ;)V
    .locals 2

    .prologue
    .line 174
    sget-object v0, LoR;->d:LoR;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, LoR;

    invoke-direct {v0}, LoR;-><init>()V

    sput-object v0, LoR;->d:LoR;

    .line 178
    :cond_0
    sget-object v0, LoR;->d:LoR;

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, LsQ;->a(Lax;I)Z

    .line 185
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, LoR;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 8

    .prologue
    const v7, 0x7f0b013c

    const/4 v0, 0x0

    .line 137
    invoke-static {}, LoR;->c()I

    move-result v1

    .line 138
    if-nez p1, :cond_0

    sget v2, LoR;->a:I

    if-ne v1, v2, :cond_0

    .line 156
    :goto_0
    return v0

    .line 143
    :cond_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03006f

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 144
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 146
    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 148
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/kms/gui/widget/KMSWidget;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.kms.gui.widget.CLICK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {p0, v0, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 152
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    invoke-virtual {v3, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 155
    sput v1, LoR;->a:I

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 127
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LoR;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static c()I
    .locals 8

    .prologue
    const v1, 0x7f020191

    const v3, 0x7f02018f

    const v2, 0x7f02018b

    const v0, 0x7f02018d

    .line 38
    sget-object v4, LoR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v4

    .line 45
    const-class v5, Lsj;

    monitor-enter v5

    .line 46
    :try_start_0
    invoke-virtual {v4}, Lsj;->i()Z

    move-result v6

    .line 47
    invoke-virtual {v4}, Lsj;->j()Z

    move-result v4

    .line 48
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lsr;->j()Lsl;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lsl;->c()I

    move-result v5

    .line 52
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v7

    .line 53
    if-nez v6, :cond_2

    .line 55
    const v0, 0x7f020193

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 58
    :cond_2
    if-eqz v5, :cond_8

    .line 60
    if-nez v4, :cond_4

    .line 62
    sget-object v0, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 64
    goto :goto_0

    :cond_3
    move v0, v2

    .line 66
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v7}, Lsm;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    sget-object v0, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    const v0, 0x7f020192

    goto :goto_0

    .line 76
    :cond_5
    const v0, 0x7f02018c

    goto :goto_0

    .line 80
    :cond_6
    sget-object v0, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 82
    goto :goto_0

    :cond_7
    move v0, v2

    .line 84
    goto :goto_0

    .line 90
    :cond_8
    if-nez v4, :cond_9

    .line 92
    sget-object v1, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 94
    goto :goto_0

    .line 100
    :cond_9
    invoke-virtual {v7}, Lsm;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 102
    sget-object v0, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 104
    const v0, 0x7f020190

    goto :goto_0

    .line 106
    :cond_a
    const v0, 0x7f02018e

    goto :goto_0

    .line 110
    :cond_b
    sget-object v1, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 112
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lay;)V
    .locals 2

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    sget-object v1, LoR;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Lay;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 168
    sget-object v0, LoR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Lay;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 169
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, LoR;->a(Landroid/content/Context;)Z

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
