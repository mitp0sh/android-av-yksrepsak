.class public final Lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln;


# instance fields
.field private final a:Landroid/content/Context;

.field private volatile b:Landroid/os/Looper;

.field private final c:Landroid/location/LocationManager;

.field private d:Landroid/location/LocationListener;

.field private e:Lp;

.field private f:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lq;->a:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lq;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lq;->c:Landroid/location/LocationManager;

    .line 29
    return-void
.end method

.method static synthetic a(Lq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lq;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lq;Landroid/location/GpsStatus$Listener;)Landroid/location/GpsStatus$Listener;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lq;->f:Landroid/location/GpsStatus$Listener;

    return-object p1
.end method

.method static synthetic a(Lq;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lq;->b:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic b(Lq;)Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lq;->d:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic c(Lq;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lq;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic d(Lq;)Landroid/location/GpsStatus$Listener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lq;->f:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic e(Lq;)Lp;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lq;->e:Lp;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 55
    iget-object v1, p0, Lq;->b:Landroid/os/Looper;

    if-eqz v1, :cond_1

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v1, p0, Lq;->b:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lq;->b:Landroid/os/Looper;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lq;->b:Landroid/os/Looper;

    .line 61
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    if-eqz v0, :cond_3

    .line 65
    iget-object v1, p0, Lq;->c:Landroid/location/LocationManager;

    iget-object v2, p0, Lq;->d:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 66
    iget-object v1, p0, Lq;->f:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lq;->c:Landroid/location/LocationManager;

    iget-object v2, p0, Lq;->f:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 71
    :cond_3
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILandroid/location/LocationListener;IILp;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    if-eqz p5, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lq;->b:Landroid/os/Looper;

    .line 44
    iput-object p2, p0, Lq;->d:Landroid/location/LocationListener;

    .line 45
    iput-object p5, p0, Lq;->e:Lp;

    .line 47
    new-instance v1, Ls;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0, v0}, Ls;-><init>(Lq;III)V

    invoke-virtual {v1}, Ls;->start()V

    .line 49
    const/4 v0, 0x1

    goto :goto_0
.end method
