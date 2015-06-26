.class final LdH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/location/Location;

.field private final b:Lp;


# direct methods
.method public constructor <init>(Lp;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, LdH;->b:Lp;

    .line 26
    return-void
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x42a00000    # 80.0f

    const/4 v0, 0x1

    .line 65
    .line 66
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 68
    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 83
    :goto_0
    return v1

    .line 71
    :cond_0
    const-string v2, "gps"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    :cond_1
    :goto_1
    move v1, v0

    .line 83
    goto :goto_0

    .line 75
    :cond_2
    const-string v2, "network"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v2, v2, v6

    if-lez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_3

    goto :goto_1
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p1}, LdH;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iput-object p1, p0, LdH;->a:Landroid/location/Location;

    .line 39
    iget-object v0, p0, LdH;->b:Lp;

    iget-object v1, p0, LdH;->a:Landroid/location/Location;

    invoke-interface {v0, v1}, Lp;->a(Landroid/location/Location;)V

    .line 41
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    const-string v0, "GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 46
    const-string v0, "GPS"

    const-string v1, "onStatusChanged - provider %s, status %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
