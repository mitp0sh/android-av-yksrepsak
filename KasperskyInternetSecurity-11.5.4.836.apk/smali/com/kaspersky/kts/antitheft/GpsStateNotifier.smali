.class public final Lcom/kaspersky/kts/antitheft/GpsStateNotifier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-static {p0}, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->b(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->a:Z

    .line 16
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 19
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 20
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {p1}, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->b(Landroid/content/Context;)Z

    move-result v0

    .line 26
    sget-boolean v1, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->a:Z

    if-eq v1, v0, :cond_0

    .line 27
    sput-boolean v0, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->a:Z

    .line 28
    if-eqz v0, :cond_1

    .line 29
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/AndroidEventType;->GpsEnabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->newEvent()LjF;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/AndroidEventType;->GpsDisabled:Lcom/kms/AndroidEventType;

    invoke-virtual {v1}, Lcom/kms/AndroidEventType;->newEvent()LjF;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0
.end method
