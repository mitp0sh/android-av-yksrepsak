.class public final LaE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:J

.field public e:LaF;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, "LicenseUsageStartTime"

    invoke-static {p1, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, LbB;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LaE;->a:J

    .line 171
    const-string v0, "FunctionalModeAfterLicenseExpiration"

    invoke-static {p1, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaE;->b:I

    .line 173
    const-string v0, "FunctionalModeAfterTicketExpiration"

    invoke-static {p1, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaE;->c:I

    .line 175
    const-string v0, "LicenseExpirationTime"

    invoke-static {p1, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, LbB;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LaE;->d:J

    .line 178
    const-string v0, "LicenseParameters"

    invoke-static {p1, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, LaF;

    invoke-direct {v1, p0, v0}, LaF;-><init>(LaE;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaE;->e:LaF;

    .line 182
    :cond_0
    return-void
.end method
