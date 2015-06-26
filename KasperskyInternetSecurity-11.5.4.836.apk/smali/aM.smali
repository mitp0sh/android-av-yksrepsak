.class public final LaM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field private synthetic g:LaF;


# direct methods
.method public constructor <init>(LaF;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 373
    iput-object p1, p0, LaM;->g:LaF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const-string v0, "EndDate"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, LbB;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LaM;->a:J

    .line 376
    const-string v0, "EndDateType"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaM;->b:I

    .line 377
    const-string v0, "ProviderUrl"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM;->c:Ljava/lang/String;

    .line 378
    const-string v0, "GraceTerm"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaM;->d:I

    .line 379
    const-string v0, "State"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaM;->e:I

    .line 380
    const-string v0, "StateReason"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaM;->f:I

    .line 381
    return-void
.end method
