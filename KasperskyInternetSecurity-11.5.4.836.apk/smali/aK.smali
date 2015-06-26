.class public final LaK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:LaL;

.field private synthetic i:LaF;


# direct methods
.method public constructor <init>(LaF;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 298
    iput-object p1, p0, LaK;->i:LaF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const-string v0, "PartnerOrderNumber"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaK;->a:Ljava/lang/String;

    .line 301
    const-string v0, "OrderNumber"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaK;->b:Ljava/lang/String;

    .line 302
    const-string v0, "PartNumber"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaK;->c:Ljava/lang/String;

    .line 303
    const-string v0, "PartnerId"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaK;->f:I

    .line 304
    const-string v0, "PartnerName"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaK;->d:Ljava/lang/String;

    .line 305
    const-string v0, "MarketSector"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaK;->g:I

    .line 306
    const-string v0, "PartnerCountry"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaK;->e:Ljava/lang/String;

    .line 307
    const-string v0, "SaleListInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    new-instance v1, LaL;

    invoke-direct {v1, p0, v0}, LaL;-><init>(LaK;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaK;->h:LaL;

    .line 311
    :cond_0
    return-void
.end method
