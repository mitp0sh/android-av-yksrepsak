.class public final LaN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    const-string v0, "ActivationCenterId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaN;->e:Ljava/lang/String;

    .line 39
    const-string v0, "ActivationCodeHash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaN;->f:Ljava/lang/String;

    .line 40
    const-string v0, "BodyHash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaN;->a:Ljava/lang/String;

    .line 41
    const-string v0, "CreatedAt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, LbB;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LaN;->g:J

    .line 43
    const-string v0, "LicenseId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaN;->b:Ljava/lang/String;

    .line 44
    const-string v0, "TicketId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaN;->h:Ljava/lang/String;

    .line 45
    const-string v0, "TicketSequenceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaN;->i:Ljava/lang/String;

    .line 46
    const-string v0, "ValidFrom"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, LbB;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LaN;->j:J

    .line 48
    const-string v0, "ValidTo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, LbB;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LaN;->c:J

    .line 50
    const-string v0, "LicenseState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaN;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
