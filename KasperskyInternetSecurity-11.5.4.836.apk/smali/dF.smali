.class public final LdF;
.super Lek;
.source "SourceFile"


# instance fields
.field private a:Landroid/location/Location;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lek;-><init>(ILjava/lang/String;)V

    .line 23
    iput-object p3, p0, LdF;->a:Landroid/location/Location;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 34
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 35
    iget-object v0, p0, LdF;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    :try_start_0
    const-string v2, "Latitude"

    iget-object v3, p0, LdF;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 41
    const-string v2, "Longitude"

    iget-object v3, p0, LdF;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 42
    const-string v2, "Altitude"

    iget-object v3, p0, LdF;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 43
    const-string v2, "Speed"

    iget-object v3, p0, LdF;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 45
    const-string v2, "LatitudeError"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v2, "LongitudeError"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "AltitudeError"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "SpeedError"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "MCC"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "MNC"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "WiFiPoints"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
