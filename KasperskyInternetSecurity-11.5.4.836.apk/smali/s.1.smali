.class final Ls;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private volatile d:Z

.field private synthetic e:Lq;


# direct methods
.method constructor <init>(Lq;III)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Ls;->e:Lq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    iput p2, p0, Ls;->a:I

    .line 83
    iput p3, p0, Ls;->b:I

    .line 84
    iput p4, p0, Ls;->c:I

    .line 85
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 93
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {v0}, Lq;->a(Lq;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "GpsWakeLock"

    invoke-static {v0, v1}, LbB;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 94
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lq;->a(Lq;Landroid/os/Looper;)Landroid/os/Looper;

    .line 98
    :try_start_0
    iget v0, p0, Ls;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {v0}, Lq;->c(Lq;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget v2, p0, Ls;->b:I

    int-to-long v2, v2

    iget v4, p0, Ls;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Ls;->e:Lq;

    invoke-static {v5}, Lq;->b(Lq;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 104
    iget-object v0, p0, Ls;->e:Lq;

    new-instance v1, Lr;

    iget-object v2, p0, Ls;->e:Lq;

    invoke-direct {v1, v2}, Lr;-><init>(Lq;)V

    invoke-static {v0, v1}, Lq;->a(Lq;Landroid/location/GpsStatus$Listener;)Landroid/location/GpsStatus$Listener;

    .line 105
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {v0}, Lq;->c(Lq;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Ls;->e:Lq;

    invoke-static {v1}, Lq;->d(Lq;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls;->d:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Ls;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {v0}, Lq;->c(Lq;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget v2, p0, Ls;->b:I

    int-to-long v2, v2

    iget v4, p0, Ls;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Ls;->e:Lq;

    invoke-static {v5}, Lq;->b(Lq;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls;->d:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :cond_1
    :goto_1
    iget-boolean v0, p0, Ls;->d:Z

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {v0}, Lq;->e(Lq;)Lp;

    move-result-object v0

    invoke-interface {v0}, Lp;->a()V

    .line 129
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 132
    :cond_2
    iget-object v0, p0, Ls;->e:Lq;

    invoke-static {v0}, Lq;->e(Lq;)Lp;

    move-result-object v0

    invoke-interface {v0}, Lp;->b()V

    .line 133
    invoke-static {v6}, LbB;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 134
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method
